# Debug report — 22 October 2026

Symptom: the supplied launcher's dock initially trapped focus; selecting Netflix later showed no Continue Watching shelf.

Confirmed causes:

- Its empty dock is padded with invisible, nonfocusable placeholders, while `downFromStatusBar` requests a first-row tile without skipping placeholders and ignores failed focus.
- Its WatchNext implementation only queried Android TV providers. It did not extract Netflix's explicit Continue Watching notifications or Prime playback sessions. Its notification service only signalled an update.
- Live read-only checks showed the new beta listener was not enabled; Free My TV's listener was enabled. Shell queries of both Watch Next and preview programs returned no rows. Shell/provider access is not proof of all private Netflix data: no private account API was queried.

Changes: skip placeholders/retry layout, merge local observed playback history on all five native provider-return paths (including null/permission-failure cases), preserve exact renderer, add empty-row keyless discovery, native solar-theme defaults and local weather/AQI chip. Settings exposes viewer permission/data information. A new package preserves the existing two launchers.

Verification before private source push: new Java compilation, complete merged Smali-to-DEX assembly, host regression tests and native ABI/lifecycle/provider-fallback contracts. No APK is required for this verification pass. Subsequent authorized APK/device validation is recorded separately in DEVICE-VERIFICATION.md after installation.

Limits: source/bytecode checks do not establish live renderer placement or every streaming app's published data. Device test is required. No full-account Netflix history is claimed; discovery is public TV releases, clearly labelled separately.
