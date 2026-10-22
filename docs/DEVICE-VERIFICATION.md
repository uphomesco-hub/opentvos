# Fire TV preview verification — 22 October 2026

Installed side by side as `com.yash.tvlauncher` version `0.5-yash.1` (6), on the authorized Amazon Fire OS 8 / Android11 API30 TV. Build source commit: `e3c11c3086756df2237342e61730d0c915df091e`.

APK SHA-256: `e10718f44012a7dacb3351255cd9eafaaa1e1461b5ddea13b457ec28e661dc1b`.

Verified:

- Full source compile, complete patched DEX assembly, policy and native-integration checks pass before APK packaging.
- Installed APK bytes match the local signed build.
- Empty-dock navigation reached a real app tile on the first preview; Fire TV default-app migration then populated Netflix, Prime Video, YouTube, Hotstar and Crunchyroll.
- Final live checks passed Right/Left between favourites and Down/Up between favourites and the app grid.
- Netflix's explicitly published Continue Watching entries and artwork appeared in the original shelf. A shelf action opened Netflix. This is observed on-device data, not full account-history access.
- Prime's empty-history row showed **Discover · TVmaze**. Selecting a card opened the attributed discovery/details view with its app-opening option. No API signup/key was required. Prime personal-history capture in this build was not newly exercised with playback during this preview.
- Delhi temperature, estimated Indian AQI and IST time appeared. The final chip aligns with the top clock and no longer overlaps the shelf heading.
- Native automatic solar schedule is enabled by default; host tests cover the preserved schedule logic. Both daytime and nighttime on-device transitions were not waited for.
- No fatal-exception marker in the final app-process log sample.
- Home returned to the existing Free My TV setup during the preview test. The accessibility/Home routing and screensaver values remain unchanged.
- Both installed backup APKs (`com.sid.tvos` and `io.freemytv`) still match their saved original hashes. Their packages/data were not cleared or replaced.
- The new notification listener was added alongside the old listener, using Android's notification service command. Directly writing the secure setting alone did not persist on this Fire OS. No accessibility or privileged write-secure-settings grant was added to the new app.

Private viewing titles, screenshots and raw notification/media-session data are kept out of the Git repository. Detailed local evidence is in the task's `tv-audit/yash-tv-preview-20261022` folder. Yash TV is left open for visual comparison; making it the default Home is a separate choice.
