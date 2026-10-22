#!/usr/bin/env python3
"""Live D-pad regression checks. Requires the user's awake, authorised TV.

Usage: python3 tests/device_controls.py --serial HOST:5555 --port 5040 --output /local/audit
Only UI screenshots/XML are written to --output; keep personal TV evidence out of Git.
The full suite changes appearance temporarily, then restores Automatic.
"""
import argparse
import json
from pathlib import Path
import re
import subprocess
import time
import xml.etree.ElementTree as ET

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--adb', default='adb')
parser.add_argument('--serial', required=True)
parser.add_argument('--port', default='5037')
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--quick', action='store_true')
args = parser.parse_args()
args.output.mkdir(parents=True, exist_ok=True)
ADB = [args.adb, '-P', args.port, '-s', args.serial]
checks = []

def shell(*words):
    return subprocess.check_output(ADB + ['shell', *words], text=True)

def key(*codes):
    for code in codes:
        shell('input', 'keyevent', str(code))
    time.sleep(.25)

def activity():
    state = shell('dumpsys', 'activity', 'activities')
    return next((line.strip() for line in state.splitlines() if 'mResumedActivity:' in line), '')

def expect_activity(name):
    deadline = time.monotonic() + 6
    while time.monotonic() < deadline:
        value = activity()
        if name in value:
            return
        time.sleep(.2)
    raise AssertionError('Expected ' + name + ', found ' + value)

def tree(label):
    shell('uiautomator', 'dump', '/sdcard/opentvos-controls-test.xml')
    xml = shell('cat', '/sdcard/opentvos-controls-test.xml')
    (args.output / (label + '.xml')).write_text(xml)
    return ET.fromstring(xml)

def focused(root):
    return [node for node in root.iter('node') if node.get('focused') == 'true']

def expect_focus(prefix, label):
    root = tree(label)
    actual = [n.get('content-desc') or n.get('text') or n.get('class') for n in focused(root)]
    assert any(value.startswith(prefix) for value in actual), (label, prefix, actual)
    checks.append(label)
    print('PASS ' + label, flush=True)
    return root

def shot(label):
    data = subprocess.check_output(ADB + ['exec-out', 'screencap', '-p'])
    (args.output / (label + '.png')).write_bytes(data)

def home():
    shell('input', 'keyevent', '224')
    shell('am', 'start', '-n', 'io.freemytv/.HomeActivity')
    expect_activity('io.freemytv/.HomeActivity')
    time.sleep(.3)

def controls():
    home()
    key(82)
    expect_activity('io.freemytv/.ControlCentreActivity')
    expect_focus('StandBy', 'controls-initial-focus')

def rect(node):
    return list(map(int, re.findall(r'-?\d+', node.get('bounds'))))

def centred_controls(root):
    for text in ('Dark', 'Auto', 'Saver', 'Display'):
        caption = next(n for n in root.iter('node') if n.get('text') == text)
        button = next(n for n in root.iter('node') if (n.get('content-desc') or '').split(',')[0] == text)
        image = next(n for n in button.iter('node') if n.get('class') == 'android.widget.ImageView')
        a, b, c = rect(caption), rect(button), rect(image)
        assert abs((a[0]+a[2])/2-(b[0]+b[2])/2) <= 1, (text, 'caption alignment', a, b)
        assert abs((c[0]+c[2])/2-(b[0]+b[2])/2) <= 1, (text, 'icon horizontal', c, b)
        assert abs((c[1]+c[3])/2-(b[1]+b[3])/2) <= 1, (text, 'icon vertical', c, b)
    checks.append('all-round-icon-and-caption-centres')
    print('PASS all-round-icon-and-caption-centres', flush=True)

try:
    controls()
    for repeat in range(2):
        key(23)
        expect_activity('io.freemytv/.StandByActivity')
        if repeat == 0:
            shot('standby')
        key(4)
        expect_activity('io.freemytv/.ControlCentreActivity')
        expect_focus('StandBy', 'standby-return-' + str(repeat))
        key(22)
        expect_focus('Wi-Fi', 'standby-return-right-' + str(repeat))
        key(21)
    if not args.quick:
        key(22)
        expect_focus('Wi-Fi', 'wifi-focus')
        key(20)
        expect_focus('Bluetooth', 'bluetooth-focus')
        key(20)
        expect_focus('Settings', 'settings-tile-focus')
        key(21)
        expect_focus('Inputs', 'inputs-focus')
        key(20)
        expect_focus('Dark', 'dark-focus')
        for title in ('Auto', 'Saver', 'Display'):
            key(22)
            root = expect_focus(title, title.lower() + '-focus')
        centred_controls(root)
        shot('controls-dark')
        key(21, 21, 21, 23)
        root = expect_focus('Dark', 'theme-toggle-retains-focus')
        centred_controls(root)
        shot('controls-toggled-theme')
        key(22, 23)
        root = expect_focus('Auto, On', 'automatic-restored')
        centred_controls(root)
        key(19, 22, 23)
        expect_activity('io.freemytv/.SettingsActivity')
        expect_focus('Profile', 'settings-root-focus')
        key(20, 23)
        expect_focus('Theme', 'appearance-focus')
        shot('appearance')
        key(23)
        expect_focus('Automatic', 'theme-choice-focus')
        key(4, 4)
        expect_focus('Appearance', 'settings-return-preserves-row')
        key(20, 23)
        expect_focus('Start StandBy', 'standby-settings-focus')
        key(23)
        expect_activity('io.freemytv/.StandByActivity')
        key(4)
        expect_activity('io.freemytv/.SettingsActivity')
        expect_focus('Start StandBy', 'standby-settings-return-focus')
        key(20, 23)
        root = tree('standby-layouts')
        labels = [n.get('content-desc', '') for n in root.iter('node')]
        assert all(any(label.startswith(name) for label in labels) for name in ('Clock & Calendar','Clock & Weather','Large Digital Clock','Analogue Clock','Calendar'))
        checks.append('five-standby-layouts')
        key(4, 4, 19, 19, 23)
        root = expect_focus('Avatar', 'profile-avatar-focus')
        shot('profile')
        key(22)
        expect_focus('Avatar 2', 'profile-right')
        key(21)
        expect_focus('Avatar 1', 'profile-left')
        # Selecting the existing avatar tests persistence without changing the profile.
        key(23)
        expect_focus('Avatar 1, selected', 'profile-refresh-preserves-focus')
        key(4, 4)
        expect_activity('io.freemytv/.ControlCentreActivity')
        expect_focus('Settings', 'settings-to-controls-restores-focus')
        key(19, 19, 19, 23)
        expect_activity('io.freemytv/.SettingsActivity')
        expect_focus('Avatar', 'header-avatar-opens-profile')
        key(4, 4)
        expect_activity('io.freemytv/.ControlCentreActivity')
        expect_focus('Profile:', 'profile-to-controls-restores-focus')
        key(20)
        expect_focus('StandBy', 'profile-return-down')
        key(20, 20, 22, 22, 23)
        expect_activity('io.freemytv/.SettingsActivity')
        time.sleep(1)
        shot('screensaver-preview')
        key(4, 4)
        expect_activity('io.freemytv/.ControlCentreActivity')
        expect_focus('Saver', 'screensaver-return-focus')
        key(82)
        expect_activity('io.freemytv/.HomeActivity')
        # Opening from the gear must reach the same controls as Menu.
        key(19, 19, 23)
        expect_activity('io.freemytv/.ControlCentreActivity')
        expect_focus('StandBy', 'gear-opens-controls')
    (args.output / 'results.json').write_text(json.dumps({'passed': checks}, indent=2))
    print('PASS total: ' + str(len(checks)), flush=True)
except Exception as error:
    (args.output / 'results.json').write_text(json.dumps({'passed': checks, 'failure': str(error)}, indent=2))
    raise
