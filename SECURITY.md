# Security

## Official downloads

Download PlaylistForge only from the Releases section of this repository:

https://github.com/Matozanato/PlaylistForge-Downloads/releases

Current public alpha checksum:

```text
SHA-256  9E6305C3BDC6B0FC3C3CD2E8AFD0B17BCB4A9ECA40F014515B6799A72ED49FB7  PlaylistForge-Setup-0.17.0-alpha72.exe
```

Public alpha binaries are not code-signed yet. Windows SmartScreen may therefore show an “unknown publisher” warning. Verify the download URL and SHA-256 before running the package.

## Reporting a vulnerability

Please do not disclose a suspected security vulnerability in a public issue. Use GitHub private vulnerability reporting for this repository when available.

Never attach real playlist files, `.pfproj` files, credentials, tokens, API keys or private provider URLs to a public report. Use redacted examples that preserve only the minimum structure required to reproduce the problem.

## Scope

Useful reports include credential exposure, unsafe URL handling, malicious playlist/project parsing, arbitrary file access, code execution, authentication bypass and release-package tampering.

General playback failures, provider outages and ordinary UI bugs should use the public bug report form instead.