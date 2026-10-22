#!/usr/bin/env python3
"""Build the public APK in isolation, without reading private catalogue configuration."""
import argparse
import hashlib
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import zipfile
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parent
parser = argparse.ArgumentParser(description=__doc__)
version = ET.parse(ROOT / 'app/AndroidManifest.xml').getroot().get('{http://schemas.android.com/apk/res/android}versionName')
if not version or any(c not in '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ.-_' for c in version):
    raise ValueError('Invalid manifest version name')
parser.add_argument('--output', type=Path, default=ROOT / ('dist/OpenTVOS-v' + version + '.apk'))
args = parser.parse_args()
destination = args.output.resolve()
destination.parent.mkdir(parents=True, exist_ok=True)

with tempfile.TemporaryDirectory(prefix='opentvos-public-') as temporary:
    build = Path(temporary)
    shutil.copytree(ROOT / 'app', build / 'app')
    shutil.copy2(ROOT / 'build.sh', build / 'build.sh')
    shutil.copy2(ROOT / 'config.example.properties', build / 'config.example.properties')
    (build / 'config.properties').write_text('''tmdb_key=
watchmode_key=
tmdb_region=IN
latitude=28.6139
longitude=77.2090
city=Delhi
language=auto
show_crypto=false
currency=INR
temperature=C
hide_animation=false
disable_assistant=false
''')
    (build / 'config.properties').chmod(0o600)
    key = ROOT / 'freemytv.keystore'
    if key.exists():
        shutil.copy2(key, build / 'freemytv.keystore')
    manifest = build / 'app/AndroidManifest.xml'
    manifest.write_text(manifest.read_text().replace('android:label="Free My TV"', 'android:label="OpenTVOS"'))
    subprocess.run(['bash', 'build.sh'], cwd=build, env=os.environ.copy(), check=True)
    config = (build / 'out/gen/io/freemytv/Config.java').read_text()
    assert 'TMDB_KEY = "";' in config and 'WATCHMODE_KEY = "";' in config
    if not key.exists():
        shutil.copy2(build / 'freemytv.keystore', key)
        key.chmod(0o600)
    shutil.copy2(build / 'FreeMyTV.apk', destination)
    with zipfile.ZipFile(destination) as apk:
        assert 'classes.dex' in apk.namelist()

digest = hashlib.sha256(destination.read_bytes()).hexdigest()
destination.with_suffix('.apk.sha256').write_text(digest + '  ' + destination.name + '\n')
print('Public APK: ' + str(destination))
print('Size: ' + str(destination.stat().st_size) + ' bytes')
print('SHA-256: ' + digest)
