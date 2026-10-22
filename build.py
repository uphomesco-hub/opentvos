#!/usr/bin/env python3
"""Reproducible source/DEX checks, then an explicitly selected APK build."""
from pathlib import Path
import os,sys,subprocess,shutil,hashlib,urllib.request,json,zipfile
ROOT=Path(__file__).resolve().parent
MODE=sys.argv[1] if len(sys.argv)>1 else 'verify'
if MODE not in ('verify','apk'):raise SystemExit('Usage: python3 build.py [verify|apk]')
JDK=Path(os.environ.get('JAVA_HOME','/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home'))
SDK=Path(os.environ.get('ANDROID_HOME',os.environ.get('ANDROID_SDK_ROOT','/opt/homebrew/share/android-commandlinetools')))
ENV=os.environ.copy();ENV['JAVA_HOME']=str(JDK);ENV['PATH']=str(JDK/'bin')+os.pathsep+ENV['PATH']
PLATFORM=max((SDK/'platforms').glob('android-*/android.jar'),key=lambda p:int(p.parent.name.split('-')[-1]))
BT=max((SDK/'build-tools').iterdir(),key=lambda p:tuple(int(n) for n in p.name.split('.')))
OUT=ROOT/'out';OUT.mkdir(exist_ok=True)
JAR=ROOT/'tools/apktool.jar'
EXPECTED='dbf930b076c6b9be08d57c449cacefc3bdd6b71ebd59b3066fc0e1f5b14f9423'
if not JAR.exists():
 urllib.request.urlretrieve('https://github.com/iBotPeaches/Apktool/releases/download/v3.0.3/apktool_3.0.3.jar',JAR)
assert hashlib.sha256(JAR.read_bytes()).hexdigest()==EXPECTED,'Tool checksum mismatch'
def run(args):subprocess.run([str(x) for x in args],cwd=ROOT,env=ENV,check=True)
run([sys.executable,ROOT/'tools/apply_base_patches.py'])
classes=OUT/'classes';dex=OUT/'dex';extra=OUT/'extra-smali';merged=OUT/'merged-smali'
for p in (classes,dex,extra,merged):
 if p.exists():shutil.rmtree(p)
 p.mkdir()
run([JDK/'bin/javac','-source','8','-target','8','-Xlint:-options','-classpath',PLATFORM,'-d',classes,*sorted((ROOT/'src').rglob('*.java'))])
run([BT/'d8','--lib',PLATFORM,'--min-api','28','--output',dex,*sorted(classes.rglob('*.class'))])
run([JDK/'bin/javac','-cp',JAR,'-d',OUT,ROOT/'tools/DexTools.java'])
cp=str(JAR)+os.pathsep+str(OUT)
run([JDK/'bin/java','-cp',cp,'DexTools','disassemble',dex/'classes.dex',extra])
shutil.copytree(ROOT/'base/smali',merged,dirs_exist_ok=True);shutil.copytree(extra,merged,dirs_exist_ok=True)
run([JDK/'bin/java','-cp',cp,'DexTools','assemble',merged,OUT/'verified-classes.dex'])
# Plain-JVM policies: critical decisions independent of Android and account data.
host=OUT/'host-tests';host.mkdir(exist_ok=True)
policies=['FocusPolicy','PlaybackPolicy','DiscoveryPolicy']
run([JDK/'bin/javac','-d',host,*[ROOT/f'src/com/sid/tvos/{n}.java' for n in policies],ROOT/'tests/FocusPolicyTest.java',ROOT/'tests/PlaybackPolicyTest.java',ROOT/'tests/com/sid/tvos/DiscoveryPolicyTest.java'])
for name in policies:run([JDK/'bin/java','-cp',host,'com.sid.tvos.'+name+'Test'])
run([sys.executable,ROOT/'tests/local/run.py'])
run([sys.executable,ROOT/'tests/integration_contract.py'])
summary={'java_compile':'PASS','dex_assembly':'PASS','host_tests':'PASS','integration_contract':'PASS','apk_built':False}
if MODE=='apk':
 package=OUT/'package'
 if package.exists():shutil.rmtree(package)
 shutil.copytree(ROOT/'base',package)
 shutil.rmtree(package/'smali');shutil.copytree(merged,package/'smali')
 run([JDK/'bin/java','-jar',JAR,'b',package,'-o',OUT/'unsigned.apk'])
 run([BT/'zipalign','-p','-f','4',OUT/'unsigned.apk',OUT/'aligned.apk'])
 keys=ROOT/'.keys';keys.mkdir(mode=0o700,exist_ok=True)
 password=keys/'signing-password';keystore=keys/'yash-tv.keystore'
 if not password.exists():
  import secrets
  password.write_text(secrets.token_urlsafe(32));password.chmod(0o600)
 ENV['YASH_TV_STORE_PASSWORD']=password.read_text().strip()
 if not keystore.exists():
  run([JDK/'bin/keytool','-genkeypair','-keystore',keystore,'-alias','yash-tv','-keyalg','RSA','-keysize','2048','-validity','10000','-dname','CN=Yash TV private build','-storepass:env','YASH_TV_STORE_PASSWORD','-keypass:env','YASH_TV_STORE_PASSWORD'])
  keystore.chmod(0o600)
 run([BT/'apksigner','sign','--ks',keystore,'--ks-key-alias','yash-tv','--ks-pass','env:YASH_TV_STORE_PASSWORD','--out',ROOT/'YashTV.apk',OUT/'aligned.apk'])
 run([BT/'apksigner','verify',ROOT/'YashTV.apk'])
 summary['apk_built']=True;summary['apk_sha256']=hashlib.sha256((ROOT/'YashTV.apk').read_bytes()).hexdigest()
(OUT/'verification.json').write_text(json.dumps(summary,indent=2)+'\n');print(json.dumps(summary))
