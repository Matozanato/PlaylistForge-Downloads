# PlaylistForge 1.0.6 — Public Beta

## Highlights

- **Fix: scheduled cloud-sync could silently stop refreshing your Dropbox list.** A missing file in
  the auto-sync package caused GitHub Actions to fail on every scheduled run since a recent update —
  fixed, plus a safety check added so this class of bug can't happen again silently.
- **Live TV channels now also merge into your existing groups**, matching what Movies/TV Shows
  already did since 1.0.5: a new channel the provider adds to a group you already have (even a locked
  one) joins that group directly instead of piling up in a duplicate "(new)" group.
- **New setting: "When provider adds a new group"** (Settings menu) — choose Auto-hide (default,
  same as before), Auto-show, or Ask me each time a brand-new group shows up.
- **Cleanup:** locking an old "<group> (new)" duplicate (left over from before this fix) now merges
  it back into the real group and removes the duplicate.
- **Fix (2026-07-15, same-day update): "View Dropbox links..." only ever showed one published
  project.** If you publish more than one project to Dropbox, the list dialog now correctly shows
  all of them, not just whichever one happened to sort last.

## Important: if you use Cloud sync

Re-run the **Cloud sync** wizard once after installing this update (Publish menu → Cloud sync…).
This refreshes the sync engine in your own GitHub repo and fixes scheduled auto-refresh if it had
stopped working.

## Requirements

- Windows 10 or Windows 11, x64
- No separate .NET installation required
- Run `PlaylistForge-Setup-1.0.6.exe` — no manual ZIP extraction needed
- Installing over an existing install upgrades it in place

## Public beta notice

This build is intended for testing and feedback. It is not code-signed yet, so Windows SmartScreen
may display an unknown-publisher warning on both the installer and the app itself.

PlaylistForge does not provide channels, playlists, subscriptions or media content.

## Verify the download

```text
SHA-256  5B5A870D899EA1DCC4895E3D42D4B5BBC63C7A717A4682356AFA131F8F3C039B  PlaylistForge-Setup-1.0.6.exe
```

## Feedback

Please use the public bug report form, but never include credentials, tokens, API keys, playlist
URLs or unredacted project files.
