# PlaylistForge 1.0.2 — Public Beta

## Highlights

- **Fix: cloud sync failing with "libsodium sealed-box failed" from an installed copy.** The 1.0.0/
  1.0.1 installer packaged an explicit file list (exe + libvlc + two text files) that predated
  `libsodium.dll` becoming a loose file next to the exe — every installed copy was silently missing
  it, breaking GitHub Actions secret encryption during manual "Sync now", even though it worked fine
  from a raw development build. The installer now packages the entire publish output instead of a
  hand-picked list, so this class of bug can't recur the same way.

If you installed 1.0.0 or 1.0.1 and saw a "GitHub sync warning: libsodium sealed-box failed" message,
this release fixes it.

## Requirements

- Windows 10 or Windows 11, x64
- No separate .NET installation required
- Run `PlaylistForge-Setup-1.0.2.exe` — no manual ZIP extraction needed
- Installing over an existing install upgrades it in place

## Public beta notice

This build is intended for testing and feedback. It is not code-signed yet, so Windows SmartScreen
may display an unknown-publisher warning on both the installer and the app itself.

PlaylistForge does not provide channels, playlists, subscriptions or media content.

## Verify the download

```text
SHA-256  412A80DB2B1B968EF328EDC2E377CA949A2C574F9705CDB8D5545430CA7E9B7D  PlaylistForge-Setup-1.0.2.exe
```

## Feedback

Please use the public bug report form, but never include credentials, tokens, API keys, playlist
URLs or unredacted project files.
