# PlaylistForge 1.0.0 — Public Beta

Starting with this release, PlaylistForge moves to plain version numbers (`1.0.0`, `1.0.1`, ...) —
no more `-alphaN` build suffixes. "Public beta" is just a label for where the project is right now,
not part of the version number.

## Highlights

- **New: Windows installer.** `PlaylistForge-Setup-1.0.0.exe` — download and run it, no manual ZIP
  extraction. Installs per-user (no admin/UAC prompt), adds Start Menu and optional desktop
  shortcuts, ships a real uninstaller. Installing a newer version upgrades an existing install in
  place. Your saved projects and settings under `%AppData%\PlaylistForge` are never touched by
  install or uninstall.
- **Fix: Watch mode crash.** Earlier tester packages could fail on first Watch-mode use with
  "Failed to load required native libraries" — the required `libvlc.dll`/`libvlccore.dll` ended up
  bundled inside the single-file executable instead of on disk where the video engine expects to
  find them. Fixed; verified with a full install-and-play test.
- **New: playlist expiry.** For Xtream sources, PlaylistForge now shows when your provider account
  expires — in the header (soonest expiry across all sources, colour-coded as it approaches) and
  per-source in Playlist ▾ Manage playlists.
- Small Watch-mode polish: an on-screen hint for the arrow-key shortcuts (Left/Right change
  channel, Up/Down change volume).

## Requirements

- Windows 10 or Windows 11, x64
- No separate .NET installation required
- Run `PlaylistForge-Setup-1.0.0.exe` — no manual ZIP extraction needed

## Public beta notice

This build is intended for testing and feedback. It is not code-signed yet, so Windows SmartScreen
may display an unknown-publisher warning on both the installer and the app itself.

PlaylistForge does not provide channels, playlists, subscriptions or media content.

## Verify the download

```text
SHA-256  86A1A1CF4713845F4219095D1F91EEE362F0468324051AD1F85525DCE1B321D4  PlaylistForge-Setup-1.0.0.exe
```

## Feedback

Please use the public bug report form, but never include credentials, tokens, API keys, playlist
URLs or unredacted project files.
