# OpenTVOS - Free My TV hybrid

This is the active `io.freemytv` home-screen fork. The repository root preserves the separate tvOS-based experiment.

## Behaviour

- Original Free My TV dock geometry, app order, navigation, lower drawer, blurred background engine, and movie/photo screensaver.
- Glass dock highlights follow Light, Dark, and the existing location-based Automatic appearance.
- Centred, horizontally browsable Continue Watching cards follow the selected dock app. Their artwork drives the original ambient background.
- Netflix entries come from explicit Continue Watching notifications; Prime entries come from playback observed on this TV. Up to 15 incomplete entries per app are retained for 14 days. Other apps appear only if they publish readable Watch Next continuation entries.
- This is observed device history, not the full streaming-account history. No recommendation is presented as a watched title. An unavailable resume action opens the app with an explanatory message.
- Original provider artwork is preferred, decoding is bounded, and small thumbnails are kept at a sensible size rather than enlarged across the hero.
- New right-side Settings and Control Centre (with tvOS emoji/gradient profile avatars, editable name, and a system photo picker): Light/Dark/Automatic, glass style, app shelf, local weather/AQI controls, native TV settings, and manual StandBy clock layouts. The default StandBy uses the recovered tvOS analog clock at left, digital time below it, and its calendar at right. The original automatic screensaver remains separate.

## Public APK and building

Download the signed [v1.2.1 release](https://github.com/uphomesco-hub/opentvos/releases/tag/v1.2.1). It contains no TMDB or Watchmode key. Continue Watching, weather/AQI, controls and StandBy need no API signup. The original screensaver engine remains; optional TMDB movie artwork needs your own key in a locally configured build.

Use Python 3, JDK 17+, Android SDK platform 36/build-tools 36, then run from this directory:

```sh
python3 build_public.py
```

This builds `dist/OpenTVOS-v1.2.1.apk` and its SHA-256 checksum in an isolated temporary directory, using blank catalogue credentials and Delhi defaults. It does not read your local `config.properties`. Keep the generated `freemytv.keystore` privately for updates. If you have no existing key, the build creates one.

For your own optional movie artwork configuration, copy `config.example.properties` to `config.properties`, configure locally, then run `bash build.sh`. That produces the private `FreeMyTV.apk`; never publish an APK compiled with personal API credentials. Generated settings, signing keys, output and APKs are ignored by Git.

Both builds use application ID `io.freemytv`, minimum Android 9 / API 28. Updates require the original signing key. `adb install -r APK_PATH` retains preferences when the signing identity matches; it does not assign Home or enable notification access.

## Fire TV setup and native settings

Pair ADB from your own computer and approve the host key on the TV. Example commands, after installing the APK:

```sh
adb connect TV_IP:5555
adb -s TV_IP:5555 shell cmd notification allow_listener io.freemytv/io.freemytv.ContinueWatchingService
```

That notification listener supplies shared viewing metadata; it does not log into streaming accounts. To revoke it, use `cmd notification disallow_listener` with the same component. Fire OS may not expose a native notification-access page. Home-button configuration is separate and uses the compatible Home on Fire helper already installed on the test TV; other Fire OS versions may differ.

Wi-Fi opens native Network settings; Bluetooth opens native Remotes & Bluetooth Devices. Fire OS protects direct Display/Audio and HDMI activities with Amazon signature permissions. Those shortcuts open the actual Fire TV settings grid with guidance instead of an unsupported Android resolver or unrelated About page. Display/Audio changes must be made in that native grid; HDMI switching can use the remote’s Inputs button. System screensaver options use the same guided grid. No protected permission is bypassed.

## Verification

Host tests: compile `WatchHistoryPolicy.java`, `IndianAqi.java`, and `tests/*.java` with javac; run both test classes in the `io.freemytv` package. Live TV verification is recorded separately after installation.

## Rollback

Keep a copy of your previous signed APK and its source/configuration before updating. Android prevents installing a lower version code over a newer build; rebuild the previous source with a higher version code and the same signing key to restore it without clearing preferences. Local device audit backups are private and are not included in this repository. Do not uninstall just to bypass a version/signature mismatch if you need to retain app data.

Upstream Android source: https://github.com/simbasjungles/free-my-tv . Its license is preserved in LICENSE.

## UI regression checks

With an authorised, awake TV and nobody else operating its remote:

```sh
python3 tests/device_controls.py --serial TV_IP:5555 --port 5040 --output /path/outside/repository/ui-audit
```

This exercises both control entry points, repeated StandBy returns, D-pad movement, focused icon/caption geometry, Light/Dark/Automatic, settings navigation, profile selection and scrolling, and return from screensaver preview. It temporarily changes appearance and restores Automatic. Screenshots and UI XML may contain personal viewing information; keep the output outside Git.

`tests/controls_icon_geometry.py` checks actual vector path bounds (requires the development-only `fonttools` Python package). The Android app has no dependency on that package.
