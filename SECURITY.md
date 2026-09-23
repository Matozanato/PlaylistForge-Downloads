# Security

## Official downloads

Download PlaylistForge only from the Releases section of this repository:

https://github.com/Matozanato/PlaylistForge-Downloads/releases

Current public beta checksum:

```text
SHA-256  86BC06CD71481C314EA0D760E5A0D63725D5142B8176773028F309A4A43609B7  PlaylistForge-Setup-1.2.0.exe
```

Public beta binaries are not code-signed yet. Windows SmartScreen may therefore show an “unknown publisher” warning. Verify the download URL and SHA-256 before running the package.

## Reporting a vulnerability

Please do not disclose a suspected security vulnerability in a public issue. Use GitHub private vulnerability reporting for this repository when available.

Never attach real playlist files, `.pfproj` files, credentials, tokens, API keys or private provider URLs to a public report. Use redacted examples that preserve only the minimum structure required to reproduce the problem.

## Scope

Useful reports include credential exposure, unsafe URL handling, malicious playlist/project parsing, arbitrary file access, code execution, authentication bypass and release-package tampering.

General playback failures, provider outages and ordinary UI bugs should use the public bug report form instead.