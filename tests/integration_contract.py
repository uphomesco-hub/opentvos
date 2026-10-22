from pathlib import Path
import re,xml.etree.ElementTree as E
r=Path(__file__).resolve().parents[1]
ns='{http://schemas.android.com/apk/res/android}'
m=E.parse(r/'base/AndroidManifest.xml').getroot()
assert m.get('package')=='com.yash.tvlauncher'
app=m.find('application')
for name in ['HistoryOpenActivity','DiscoveryOpenActivity','FeatureSettingsActivity']:
 a=next(a for a in app.findall('activity') if a.get(ns+'name')=='com.sid.tvos.'+name)
 assert a.get(ns+'exported')=='false'
s=(r/'base/smali/com/sid/tvos/MainActivity.smali').read_text()
for hook in ['initialize(Landroid/content/Context;)V','onResume(Landroid/app/Activity;)V','onPause(Landroid/app/Activity;)V','appendSettings(Landroid/app/Activity;Ljava/lang/Object;)V','focusTile(Landroid/app/Activity;I)V']:
 assert 'Lcom/sid/tvos/FeatureBridge;->'+hook in s,hook
for method in ['updateContinueWatching(I)V','onTileFocused(ILandroid/view/View;)V']:
 assert method in s,method
for field in ['adapter:Lcom/sid/tvos/AppAdapter;','grid:Landroidx/recyclerview/widget/RecyclerView;','lastFocused:I']:
 assert field in s,field
watch=(r/'base/smali/com/sid/tvos/WatchNext.smali').read_text()
q=watch[watch.index('.method private static query('):];q=q[:q.index('.end method')]
assert 'move-object v12, p0' in q
assert q.count('return-object ')==q.count('FeatureBridge;->merge(')==5
assert re.search(r'const/4 p0, 0x0\s+invoke-static \{v12, p0\}',q),'Null-provider fallback must retain original Context'
item=(r/'base/smali/com/sid/tvos/WatchNext$Item.smali').read_text()
for field in ['title:Ljava/lang/String;','subtitle:Ljava/lang/String;','section:Ljava/lang/String;','art:Ljava/lang/String;','intent:Landroid/content/Intent;','progress:F']:
 assert field in item,field
settings=(r/'base/smali/com/sid/tvos/MainActivity$SettingsPanel.smali').read_text()
assert 'action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V' in settings
# Privacy boundary: no API key, config file, APK or signing material is required by runtime sources.
src='\n'.join(p.read_text() for p in (r/'src').rglob('*.java'))
assert 'TMDB_KEY' not in src and 'WATCHMODE_KEY' not in src
# Every reflected native member must keep its exact original identity.
assert 'apply(Landroid/content/Context;)Z' in (r/'base/smali/com/sid/tvos/DarkSchedule.smali').read_text()
assert 'applyDark()V' in s
print('PASS: preserved native ABI, lifecycle hooks, all provider-return fallbacks, internal intents and no-key source')
