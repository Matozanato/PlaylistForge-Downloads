# PlaylistForge 1.0.4 — Public Beta

## Highlights

- **Fix: scheduled GitHub cloud sync never actually refreshed your provider data.** GitHub Actions
  always uppercases secret names, but the sync engine looked up Xtream/M3U/EPG credentials using
  the source's original lowercase ID in a case-sensitive lookup — so credentials were never found on
  the runner. Every scheduled sync quietly fetched your provider anonymously (rejected with an
  authentication error) and just re-published your last saved data, while the scheduled run still
  showed green with no visible failure. Sync now matches credential names correctly, so scheduled
  runs pull fresh data from your provider again.

If your cloud-sync list stopped picking up new channels after setting it up, this release fixes it.

## Requirements

- Windows 10 or Windows 11, x64
- No separate .NET installation required
- Run `PlaylistForge-Setup-1.0.4.exe` — no manual ZIP extraction needed
- Installing over an existing install upgrades it in place

## Public beta notice

This build is intended for testing and feedback. It is not code-signed yet, so Windows SmartScreen
may display an unknown-publisher warning on both the installer and the app itself.

PlaylistForge does not provide channels, playlists, subscriptions or media content.

## Verify the download

```text
SHA-256  071D4FE1C27F4B37284A99D24FD546469294B04878BCC2D4F67BD2629D84D285  PlaylistForge-Setup-1.0.4.exe
```

## Feedback

Please use the public bug report form, but never include credentials, tokens, API keys, playlist
URLs or unredacted project files.
