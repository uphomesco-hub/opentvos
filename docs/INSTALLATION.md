# Install OpenTVOS yourself

These steps require no AI agent, API signup, root, source-code build or Android Studio. Use the signed APK from this repository's [latest release](https://github.com/uphomesco-hub/opentvos/releases/latest). **The current main version is 1.2.2**, with white floating logos, a soft brand-colour focus glow and bare top-right icons.

OpenTVOS is an Android launcher app. Your TV's operating system and streaming apps keep running underneath it.

## 1. Check your device and download

- Android TV / Google TV: Android **9 or newer** (API 28+). Look under the TV's **Settings → System / Device Preferences → About**.
- Android-based Fire TV: Fire OS 7+ meets the Android minimum. The current release was tested on a Xiaomi Fire TV with Fire OS 8 / Android 11. Other devices and OEM Home-button policies can differ.
- Samsung Tizen, LG webOS, Apple tvOS and Fire TV devices running **Vega OS** cannot install this Android APK. A compatible external Android TV / Fire OS device is needed for those TVs.
- The same APK is used for Android TV and Fire TV; choose **`OpenTVOS-v1.2.2.apk`** under release **Assets**, not GitHub's source ZIP or the older `YashTV.apk` experiment.

Download the APK on your computer/phone or directly through a TV browser/download app. The `.sha256` asset is an optional integrity checksum, not an app to install.

Core launcher features need no OpenTVOS account, TMDB key or Watchmode key. Your streaming apps still need their own normal subscriptions/logins. Optional TMDB artwork for the cinematic movie screensaver is not bundled with a shared key; it needs a separately configured local build. StandBy clocks, weather/AQI and shared Continue Watching do not need that key.

## 2. Easiest install: USB or a TV file manager

1. Copy the APK to a USB drive and connect it to your TV. Alternatively transfer the APK using a file-transfer app supported by both your phone/computer and TV, or download it directly on the TV.
2. Open the APK with a TV-compatible file manager or download app.
3. If Android asks, allow **Install unknown apps** for that specific file manager/download app. A common location is **Settings → Apps → Special app access / Security & restrictions → Install unknown apps**; names vary. Some Google TV models require enabling Developer options first, as described in section 3.
4. Return to the APK and choose **Install**. On an update, choose **Update**.
5. Open **OpenTVOS** from your TV's Apps screen. If it is not pinned there, use **Settings → Apps → See all apps → OpenTVOS → Open**.
6. Turn off the file manager's unknown-app installation permission afterwards if you no longer need it.

If the TV cannot open APK files or has no usable file manager, use the computer method below.

## 3. Alternative install: a computer and ADB

### Prepare the computer

Download Google's [SDK Platform-Tools](https://developer.android.com/tools/releases/platform-tools) for Windows, macOS or Linux, then extract it. Copy `OpenTVOS-v1.2.2.apk` into that extracted `platform-tools` folder and open a terminal there.

Commands below use `adb`. If it is not installed on your PATH, replace each `adb` with **`.\adb.exe` in Windows PowerShell** or **`./adb` on macOS/Linux**. You do not need the full Android SDK to install a release APK.

### Enable the TV's debugging option

Keep the TV and computer on the same local network.

- **Android TV / Google TV:** open **Settings → System / Device Preferences → About**, select **Build / Android TV OS build** seven times, then find **Developer options**. Turn on the available **USB debugging / Network debugging / Wireless debugging** option. Menu names depend on the TV.
- **Fire TV:** open **Settings → My Fire TV / Device & Software → About**, select the device-name entry seven times if Developer options is hidden, return to **Developer options**, and enable **ADB Debugging**. Find the IP under **About → Network**. See [Amazon's ADB instructions](https://developer.amazon.com/docs/fire-tv/connecting-adb-to-device.html).

### Connect using the method your TV exposes

**Network/ADB debugging with port 5555** (including the tested Fire TV):

```sh
adb connect TV_IP:5555
adb devices
```

Replace `TV_IP` with the TV's own address. Approve the computer's debugging key on the TV. Continue only when `adb devices` says **device**. `unauthorized` means the TV still needs approval; an open network port alone is not enough.

**Wireless debugging with a pairing code** (available on supported Android TV 13+ devices):

1. Open **Wireless debugging → Pair device with pairing code** on the TV.
2. Run the first command with the pairing address/port shown in that dialog and enter its code.
3. Return to the main Wireless debugging page. Use its separate connection address/port for the second command; the pairing and connection ports can differ.

```sh
adb pair TV_IP:PAIRING_PORT
adb connect TV_IP:CONNECTION_PORT
adb devices
```

**USB debugging only:** if the TV provides a USB debugging/device port, connect it with the appropriate data cable, approve the prompt, then run `adb devices`. A normal TV USB port used for flash drives may not support this. Some TVs need a vendor-supported USB connection before `adb tcpip 5555` can enable network ADB. Do not assume every Android TV accepts network ADB on port 5555.

If several devices are listed, disconnect the others or add `-s DEVICE_SERIAL` after `adb` in each following command.

### Install and launch

```sh
adb install -r OpenTVOS-v1.2.2.apk
adb shell am start -n io.freemytv/.HomeActivity
```

Wait for **Success** from installation. This opens the launcher without changing the default Home button.

## 4. Make the Home button open OpenTVOS

### Android TV / Google TV

1. Press **Home**. If Android offers a launcher chooser, select **OpenTVOS → Always**.
2. Otherwise open **OpenTVOS → gear / Menu → Settings → Default Home → System Home chooser**, or the TV's **Settings → Apps → Default apps → Home app** if available.
3. If the OEM hides that choice, ADB may allow it. First run this read-only command and **save the original component it prints** so you can restore it later:

```sh
adb shell cmd package resolve-activity --brief -a android.intent.action.MAIN -c android.intent.category.HOME
```

Then request OpenTVOS as Home:

```sh
adb shell cmd package set-home-activity io.freemytv/io.freemytv.HomeActivity
```

Press Home and verify it opens OpenTVOS. If the TV rejects the command or keeps its factory launcher, that firmware does not permit this route; you can still open OpenTVOS from Apps. Keep the original launcher installed. This guide does not disable OEM/system packages or run a debloat routine.

### Fire TV

Use the separate [Home on Fire helper and its current setup instructions](https://github.com/toolicious/home-on-fire#installation). The helper's documentation covers supported Fire OS versions and an accessibility permission setup; it is not included in the OpenTVOS APK.

1. Install `home-on-fire.apk` from the helper's official GitHub release.
2. If the accessibility service can be enabled in TV settings, enable it there. If that UI is unavailable, the helper documents this one-time ADB grant:

```sh
adb install -r home-on-fire.apk
adb shell pm grant io.github.toolicious.homeonfire android.permission.WRITE_SECURE_SETTINGS
```

3. Open **Home on Fire**, enable its redirect service using its own controls, and use **Choose target app** to select **OpenTVOS**.
4. Optionally enable the helper's boot-launch setting. Press Home to test, then test after waking the TV.

Amazon's launcher remains installed and can briefly appear before redirection. Helper compatibility depends on Fire OS; these steps are not for Vega OS. To return to stock Home, disable the redirect in the helper before uninstalling OpenTVOS.

## 5. Enable Continue Watching

Open **gear / Menu → Settings → Continue Watching → Media access**. If the TV opens a notification-access screen, enable **OpenTVOS**. If that screen is unavailable, connect ADB as above and run:

```sh
adb shell cmd notification allow_listener io.freemytv/io.freemytv.ContinueWatchingService
```

Play a title normally in a streaming app, such as Netflix or Prime Video, then return Home. Select that app's dock logo to see metadata it has shared. Netflix uses explicit Continue Watching notifications; Prime history comes from observed playback on this TV; readable TV-provider continuation entries can also be used. Existing account-wide rows are not imported. Entries can remain empty if an app publishes no readable metadata; no fake personal history is generated. Every observed title is now retained without an app-imposed count or age cutoff, including completed titles, subject to device storage. This applies to any installed TV app publishing readable playback sessions or explicit Watch Next CONTINUE entries. Titles removed by earlier versions cannot be recovered, and private Netflix/Prime account-wide history is not imported. The row is labelled Watch History.

You can revoke this optional access with:

```sh
adb shell cmd notification disallow_listener io.freemytv/io.freemytv.ContinueWatchingService
```

## 6. Personalise it with the remote

- **Gear or Menu → Settings → Favourites:** choose and reorder installed apps. No reinstall is needed when changing the dock.
- **Appearance:** choose Automatic, Light or Dark. Automatic follows the configured location's sunrise/sunset. White dock logos remain white, with a soft brand glow on focus; top-right icons follow the theme.
- **Location & Weather → Location:** enter a city plus its latitude and longitude; defaults are Delhi (`28.6139`, `77.2090`). Coordinates are entered manually. Weather and solar appearance use this location. Clock displays currently use **IST**; changing the city does not change the time zone. AQI is labelled **IN est.**, not an official live station reading or an automatically selected national scale.
- **Profile:** choose an avatar or photo and edit the display name.
- **StandBy:** start the clock/calendar display and choose one of five layouts. Back returns to the controls. Automatic movie/photo screensaver activation is a separate native TV setting; the public APK does not include personal catalogue credentials.
- **Down from the dock:** open the existing Inputs/All Apps drawer. On Fire TV, some protected native settings use the system settings grid with guidance.

Verify Home, arrows, app launching, gear/Menu, Back from StandBy and both theme modes before relying on it as your main launcher.

## 7. Updating and restoring

Install newer OpenTVOS release APKs over the existing app using the file manager's Update action or `adb install -r NEW_APK.apk`. The package remains `io.freemytv` and releases use the same signing identity; preferences are retained when Android accepts the update.

If installation reports **signature mismatch / INSTALL_FAILED_UPDATE_INCOMPATIBLE**, a different signing key owns an existing Free My TV installation. Stop and preserve its APK/data before deciding what to remove. Uninstalling to resolve that conflict deletes app data. An older release can also be rejected as a downgrade; do not clear app data merely to force a rollback. Keep the prior signed APK/source and key for a rebuild with a newer version code if necessary.

For Android TV / Google TV, select your original launcher through the Home-app chooser, or restore the component saved in section 4:

```sh
adb shell cmd package set-home-activity ORIGINAL_HOME_COMPONENT
```

For Fire TV, turn off Home on Fire's redirect. Press Home and confirm stock Home works before removing OpenTVOS. Notification access can be revoked with the command above. A new device starts with its own local profile/history; the APK does not transfer private TV data or streaming logins.

## Troubleshooting

| Symptom | What to check |
| --- | --- |
| APK won't install | Android 9+; correct APK asset; adequate storage; allowed installer; signing conflict or version downgrade. |
| `adb` not found | Run the command from the extracted Platform-Tools directory using `./adb` or `.\adb.exe`. |
| Cannot connect | Same local network, TV awake, correct current address/port, debugging enabled; guest Wi-Fi may isolate devices. |
| `unauthorized` | Accept the host-key prompt on the TV; revoke old debugging authorisations and reconnect only if necessary. |
| Home still opens stock UI | Complete section 4; install alone does not assign Home. OEM/Fire OS restrictions may require a compatible helper. |
| Continue Watching is empty | Enable access; play a title and return; the app may not expose metadata or earlier history. |
| Weather is for Delhi | Change city and coordinates in Location & Weather. Clock remains IST in this release. |
| White logos are faint in Light mode | Use Dark/Automatic or choose an app with darker ambient artwork; the release keeps the requested white-logo styling. |

Primary setup references: [Google ADB guide](https://developer.android.com/tools/adb), [Google Platform-Tools downloads](https://developer.android.com/tools/releases/platform-tools), [Amazon Fire TV ADB guide](https://developer.amazon.com/docs/fire-tv/connecting-adb-to-device.html), and [Home on Fire](https://github.com/toolicious/home-on-fire). Menu names and supported permissions depend on the device's firmware.

## Screensaver artwork — no API signup

The cinematic screensaver reuses suitable landscape artwork saved from your observed watch history. Its zoom, pan, crossfade, captions and clock remain. Prime landscape images can be fetched from the public page for an already observed title; no account token or movie API key is used. Tiny notification icons and portrait posters are excluded from the fullscreen slideshow. If no suitable image is cached, it shows your selected StandBy clock/calendar layout on black. It never starts streaming a video or extracts protected video frames.

Artwork comes from what an app shares, so source quality and availability vary. The archive and cached images stay in app-private storage; they are not included in the downloadable APK. An update using the same package and signer preserves them. Uninstalling or clearing app storage removes the local archive.
