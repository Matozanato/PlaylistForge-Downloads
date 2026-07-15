# PlaylistForge 1.0.5 — Public Beta

## Highlights

- **Fix: new movies and TV episodes could pile up as duplicate "(new)" groups instead of joining
  your existing Movies/TV Shows categories.** If you had locked your groups (to protect a curated
  Live TV channel list from provider changes), that same protection was also applying to Movies and
  TV Shows — where a group is just a genre/category bucket, not a curated list. New provider content
  now joins the existing, matching Movies/TV Shows group directly. Live TV groups keep the original
  protection: a locked Live TV group's channel list still cannot be silently changed by the provider.

## Requirements

- Windows 10 or Windows 11, x64
- No separate .NET installation required
- Run `PlaylistForge-Setup-1.0.5.exe` — no manual ZIP extraction needed
- Installing over an existing install upgrades it in place

## Public beta notice

This build is intended for testing and feedback. It is not code-signed yet, so Windows SmartScreen
may display an unknown-publisher warning on both the installer and the app itself.

PlaylistForge does not provide channels, playlists, subscriptions or media content.

## Verify the download

```text
SHA-256  C90A9131958B45CEC4A50493C8DBBAA457AE843BD7037D7E17F2C939E4801363  PlaylistForge-Setup-1.0.5.exe
```

## Feedback

Please use the public bug report form, but never include credentials, tokens, API keys, playlist
URLs or unredacted project files.
