param(
    [Parameter(Mandatory=$true)][string]$Version,
    [Parameter(Mandatory=$true)][string]$SetupExePath,
    [string]$Repository = "Matozanato/PlaylistForge-Downloads"
)

# 0.17.0-alpha72: switched from a raw ZIP to the Inno Setup installer
# (PlaylistForge/installer/PlaylistForge.iss in the main repo) as the public release artifact -
# no more "extract ZIP, keep libvlc folder beside the exe" instructions for testers.
$ErrorActionPreference = "Stop"
if (-not (Test-Path -LiteralPath $SetupExePath)) { throw "Setup exe not found: $SetupExePath" }
$tag = "v$Version"
$assetName = "PlaylistForge-Setup-$Version.exe"
$tempAsset = Join-Path ([IO.Path]::GetTempPath()) $assetName
Copy-Item -LiteralPath $SetupExePath -Destination $tempAsset -Force
$hash = (Get-FileHash -Algorithm SHA256 -LiteralPath $tempAsset).Hash
$notes = @"
# PlaylistForge $Version

Windows x64 public build. Download and run ``$assetName`` - no manual ZIP extraction needed.
Installs per-user (no admin/UAC prompt) with Start Menu / desktop shortcuts and a real uninstaller.

SHA-256: ``$hash``

PlaylistForge is freeware supported by optional donations. It does not provide channels, subscriptions or media content.
"@
try {
    gh release create $tag $tempAsset --repo $Repository --title "PlaylistForge $Version" --notes $notes --prerelease
}
finally {
    Remove-Item -LiteralPath $tempAsset -Force -ErrorAction SilentlyContinue
}
