#!/usr/bin/env python3
"""Fire TV native destination + return-focus checks; does not change connections/settings.

Screenshots and UI XML may contain private device/network information. Keep --output outside Git.
"""
import argparse,json,subprocess,time
from pathlib import Path
import xml.etree.ElementTree as ET
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--adb',default='adb');p.add_argument('--serial',required=True);p.add_argument('--port',default='5037');p.add_argument('--output',type=Path,required=True)
a=p.parse_args();a.output.mkdir(parents=True,exist_ok=True)
adb=[a.adb,'-P',a.port,'-s',a.serial];checks=[]
def sh(*args):return subprocess.check_output(adb+['shell',*args],text=True)
def key(*codes):
 for code in codes:sh('input','keyevent',str(code))
 time.sleep(.3)
def resumed():return next((l.strip() for l in sh('dumpsys','activity','activities').splitlines() if 'mResumedActivity:' in l),'')
def expect(component):
 for _ in range(30):
  if component in resumed():return
  time.sleep(.2)
 raise AssertionError((component,resumed()))
def tree(name):
 for _ in range(3):
  sh('rm','-f','/sdcard/opentvos-native-test.xml')
  sh('uiautomator','dump','/sdcard/opentvos-native-test.xml')
  try:
   xml=sh('cat','/sdcard/opentvos-native-test.xml');r=ET.fromstring(xml)
   (a.output/(name+'.xml')).write_text(xml);return r
  except (subprocess.CalledProcessError,ET.ParseError):time.sleep(.5)
 raise AssertionError('No fresh UI hierarchy: '+name)
def focus(prefix,name):
 r=tree(name);actual=[n.get('content-desc') or n.get('text') for n in r.iter('node') if n.get('focused')=='true']
 assert any(v and v.startswith(prefix) for v in actual),(name,prefix,actual)
 checks.append(name);print('PASS '+name,flush=True)
def native(name,component,return_component,return_focus):
 expect(component);time.sleep(.7)
 r=tree(name);labels=' '.join(n.get('text','')+' '+n.get('content-desc','') for n in r.iter('node'))
 assert 'No apps can perform this action' not in labels,(name,'unsupported resolver')
 if 'MainSettingsActivity' in component:assert 'Display & Audio' in labels and 'Network' in labels,(name,'not the actual settings grid')
 (a.output/(name+'.png')).write_bytes(subprocess.check_output(adb+['exec-out','screencap','-p']))
 checks.append(name+'-correct-destination');print('PASS '+name+'-correct-destination',flush=True)
 for _ in range(8):
  if return_component in resumed():break
  key(4)
 expect(return_component);focus(return_focus,name+'-return')
cc='io.freemytv/.ControlCentreActivity';settings='io.freemytv/.SettingsActivity'
root='com.amazon.tv.launcher/.ui.MainSettingsActivity';network='com.amazon.tv.settings.v2/.tv.network.NetworkActivity';bt='ControllersAndBluetoothActivity'
try:
 sh('am','start','-n','io.freemytv/.HomeActivity');time.sleep(.6);key(82);expect(cc)
 key(22,23);native('wifi',network,cc,'Wi-Fi')
 key(20,23);native('bluetooth',bt,cc,'Bluetooth')
 key(20,21,23);native('inputs-guided-settings',root,cc,'Inputs')
 key(20,22,22,22,23);native('display-guided-settings',root,cc,'Display')
 key(19,23);expect(settings);focus('Profile','settings-entry')
 key(*([20]*9),23);focus('Display','display-page')
 key(23);native('settings-display',root,settings,'Display')
 key(20,23);native('settings-sound',root,settings,'Sound')
 key(20,23);native('settings-hdmi',root,settings,'HDMI inputs')
 key(4,19,19,19,23,20,23);native('system-screensaver',root,settings,'System screensaver options')
 key(4,20,20,23,23);native('settings-pair-accessory',bt,settings,'Pair a remote or accessory')
 key(4,4);expect(cc);focus('Settings','all-native-returns')
 (a.output/'results.json').write_text(json.dumps({'passed':checks},indent=2));print('PASS total '+str(len(checks)))
except Exception as e:
 (a.output/'results.json').write_text(json.dumps({'passed':checks,'failure':str(e)},indent=2));raise
