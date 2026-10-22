from pathlib import Path
import re
ROOT=Path(__file__).resolve().parents[1]
base=ROOT/'base'
p=base/'smali/com/sid/tvos/MainActivity.smali'
s=p.read_text()
if 'Lcom/sid/tvos/FeatureBridge;' not in s:
 start=s.index('.method private focusTile(I)V')
 end=s.index('.end method',start)+len('.end method')
 s=s[:start]+'''.method private focusTile(I)V
    .locals 0
    invoke-static {p0, p1}, Lcom/sid/tvos/FeatureBridge;->focusTile(Landroid/app/Activity;I)V
    return-void
.end method'''+s[end:]
 needle='invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V'
 assert s.count(needle)==1
 s=s.replace(needle,needle+'\n\n    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/FeatureBridge;->initialize(Landroid/content/Context;)V')
 for signature,call in [('onResume()V','onResume(Landroid/app/Activity;)V'),('onPause()V','onPause(Landroid/app/Activity;)V')]:
  start=s.index('.method public '+signature);end=s.index('.end method',start)
  block=s[start:end]
  block=block.replace('    return-void','    invoke-static/range {p0 .. p0}, Lcom/sid/tvos/FeatureBridge;->'+call+'\n\n    return-void')
  s=s[:start]+block+s[end:]
 start=s.index('.method private buildSettingsPage(');end=s.index('.end method',start)
 block=s[start:end].replace('    return-void','    invoke-static/range {p0 .. p1}, Lcom/sid/tvos/FeatureBridge;->appendSettings(Landroid/app/Activity;Ljava/lang/Object;)V\n\n    return-void')
 s=s[:start]+block+s[end:]
 p.write_text(s)
p=base/'smali/com/sid/tvos/WatchNext.smali';s=p.read_text()
if 'Lcom/sid/tvos/FeatureBridge;' not in s:
 start=s.index('.method private static query(');end=s.index('.end method',start)
 block=s[start:end];assert '.locals 12' in block
 block=block.replace('.locals 12','.locals 13',1)
 # Keep the original Context even when original exception handlers reuse p0.
 insert=block.index('    new-instance v0')
 block=block[:insert]+'    move-object v12, p0\n\n'+block[insert:]
 block=re.sub(r'    return-object (\w+)',lambda m:'    invoke-static {v12, '+m[1]+'}, Lcom/sid/tvos/FeatureBridge;->merge(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;\n\n    move-result-object '+m[1]+'\n\n'+m[0],block)
 s=s[:start]+block+s[end:];p.write_text(s)
p=base/'AndroidManifest.xml';s=p.read_text().replace('package="com.sid.tvos"','package="com.yash.tvlauncher"')
for name in ['HistoryOpenActivity','DiscoveryOpenActivity','FeatureSettingsActivity']:
 if 'android:name="com.sid.tvos.'+name+'"' not in s:
  s=s.replace('    </application>','        <activity android:name="com.sid.tvos.'+name+'" android:exported="false" android:excludeFromRecents="true" android:theme="@android:style/Theme.Material.NoActionBar"/>\n    </application>')
p.write_text(s)
p=base/'res/values/strings.xml';s=p.read_text().replace('<string name="app_name">tvOS Launcher</string>','<string name="app_name">Yash TV</string>');p.write_text(s)
p=base/'apktool.yml';s=p.read_text().replace('minSdkVersion: 21','minSdkVersion: 28').replace('versionCode: 5','versionCode: 6').replace('versionName: 0.5\n','versionName: 0.5-yash.1\n');p.write_text(s)
print('Base hooks, identity and internal activities patched (idempotent).')
