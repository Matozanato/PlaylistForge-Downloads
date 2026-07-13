# PlaylistForge 1.0.1 — Public Beta

## Highlights

- **Fix: Xtream account expiry wasn't remembered.** The header only ever showed "Expires: ..." right
  after a sync — reopening a saved project later showed nothing. The save path was silently dropping
  the expiry fields; fixed, and now covered by a regression test.
- Expiry now shows directly next to the project name in the header, instead of on the far right.
- Defensive fix for a possible "GitHub sync warning: libsodium sealed-box failed: Could not initialize
  platform-specific components" error during manual cloud sync.

## Requirements

- Windows 10 or Windows 11, x64
- No separate .NET installation required
- Run `PlaylistForge-Setup-1.0.1.exe` — no manual ZIP extraction needed
- Installing over an existing install upgrades it in place

## Public beta notice

This build is intended for testing and feedback. It is not code-signed yet, so Windows SmartScreen
may display an unknown-publisher warning on both the installer and the app itself.

PlaylistForge does not provide channels, playlists, subscriptions or media content.

## Verify the download

```text
SHA-256  020FD56B6701FCDEF6931A9ECCDAF0E912CC6B9740B00F4D953AAA09663C0263  PlaylistForge-Setup-1.0.1.exe
```

## Feedback

Please use the public bug report form, but never include credentials, tokens, API keys, playlist
URLs or unredacted project files.
