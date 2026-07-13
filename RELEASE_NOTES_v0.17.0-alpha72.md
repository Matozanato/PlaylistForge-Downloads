# PlaylistForge 0.17.0-alpha72 — Public Alpha

This release switches distribution to a real Windows installer and fixes a Watch-mode crash present
in the alpha70 tester package.

## Highlights

- **New: Windows installer.** `PlaylistForge-Setup-0.17.0-alpha72.exe` replaces the manual
  "extract ZIP, keep libvlc folder beside the exe" flow — just download and run it.
  Installs per-user (no admin/UAC prompt), adds Start Menu and optional desktop shortcuts, and
  ships a real uninstaller. Your saved projects and settings under `%AppData%\PlaylistForge` are
  never touched by install or uninstall.
- **Fix: Watch mode crash.** The alpha70 tester package could fail on first Watch-mode use with
  "Failed to load required native libraries" — the required `libvlc.dll`/`libvlccore.dll` ended up
  bundled inside the single-file executable instead of on disk where the video engine expects to
  find them. Fixed; verified with a full install-and-play test.
- Small Watch-mode polish: an on-screen hint for the arrow-key shortcuts (Left/Right change
  channel, Up/Down change volume).

## Requirements

- Windows 10 or Windows 11, x64
- No separate .NET installation required
- Run `PlaylistForge-Setup-0.17.0-alpha72.exe` — no manual ZIP extraction needed

## Public alpha notice

This build is intended for testing and feedback. It is not code-signed yet, so Windows SmartScreen
may display an unknown-publisher warning on both the installer and the app itself.

PlaylistForge does not provide channels, playlists, subscriptions or media content.

## Verify the download

```text
SHA-256  9E6305C3BDC6B0FC3C3CD2E8AFD0B17BCB4A9ECA40F014515B6799A72ED49FB7  PlaylistForge-Setup-0.17.0-alpha72.exe
```

## Feedback

Please use the public bug report form, but never include credentials, tokens, API keys, playlist
URLs or unredacted project files.
