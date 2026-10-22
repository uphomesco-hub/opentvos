# Provenance

The base is a modification of the user-supplied tvOS Launcher 0.5 beta (`com.sid.tvos`, version 5).
Original SHA-256: `604f236bf0a46e9716d53d6be6e5a610dc0591d0393f2d44f091d00ef15ecee5`.

`base/` contains the complete decoded manifest, resources, assets and DEX assembly recovered with Apktool 3.0.3. `reference/java/` contains the complete 315 top-level Java files reconstructed with the pinned JADX headless MCP 0.7.1 engine through the preceding REA analysis. This reference is not directly compilable original source; obfuscated names and decompiler warnings remain. The assembled base preserves the existing UI.

New maintained source is in `src/`. Playback and Indian AQI behavior is adapted from the locally customized Free My TV code, originally https://github.com/simbasjungles/free-my-tv. Its MIT notice is retained in `licenses/Free-My-TV-MIT.txt`.

The supplied APK did not establish an open-source licence for the tvOS Launcher base or its bundled artwork. Original rights and third-party notices are preserved. No claim of authorship or new blanket licence is made over that base. New modifications do not establish permission to publicly redistribute the original package/artwork.

TVmaze catalogue metadata is used with attribution under CC BY-SA; https://www.tvmaze.com/api#licensing. Weather/AQI model data: Open-Meteo and CAMS (see DATA-SOURCES.md). No TMDB/Watchmode keys, signing keys or private viewing-history records are included.
