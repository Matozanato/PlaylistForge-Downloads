# PlaylistForge 1.0.3 — Public Beta

## Highlights

- **Fix: scheduled cloud sync silently stopped refreshing already-configured lists.** Every Publish
  only ever refreshed two files of the cloud-sync engine pushed into your private GitHub sync repo;
  the rest stayed frozen at whatever it was when that repo was first set up. A recent app change
  (Xtream account expiry) updated one of those two refreshed files to reference fields that only
  existed in the *unrefreshed* half of the engine — every scheduled sync run then failed to build,
  and the playlist quietly stopped updating on its 6-hour schedule, with no visible error beyond a
  red X in the sync repo's Actions tab. Publish now always pushes the complete, current cloud-sync
  engine, so this class of drift can't happen again.

If your scheduled sync stopped updating after installing 1.0.1 or 1.0.2, this release fixes it — the
next Publish from the app will fully refresh your sync repo.

## Requirements

- Windows 10 or Windows 11, x64
- No separate .NET installation required
- Run `PlaylistForge-Setup-1.0.3.exe` — no manual ZIP extraction needed
- Installing over an existing install upgrades it in place

## Public beta notice

This build is intended for testing and feedback. It is not code-signed yet, so Windows SmartScreen
may display an unknown-publisher warning on both the installer and the app itself.

PlaylistForge does not provide channels, playlists, subscriptions or media content.

## Verify the download

```text
SHA-256  4F305E566A216D5939C20D65E16115DE4A1C99BE762971A4C79D1E14ED0C04C6  PlaylistForge-Setup-1.0.3.exe
```

## Feedback

Please use the public bug report form, but never include credentials, tokens, API keys, playlist
URLs or unredacted project files.
