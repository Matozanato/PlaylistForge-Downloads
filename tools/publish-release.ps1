param(
    [Parameter(Mandatory=$true)][string]$Version,
    [Parameter(Mandatory=$true)][string]$ZipPath,
    [string]$Repository = "Matozanato/PlaylistForge-Downloads"
)

$ErrorActionPreference = "Stop"
if (-not (Test-Path -LiteralPath $ZipPath)) { throw "ZIP not found: $ZipPath" }
$tag = "v$Version"
$assetName = "PlaylistForge-win-x64.zip"
$tempAsset = Join-Path ([IO.Path]::GetTempPath()) $assetName
Copy-Item -LiteralPath $ZipPath -Destination $tempAsset -Force
$hash = (Get-FileHash -Algorithm SHA256 -LiteralPath $tempAsset).Hash
$notes = @"
# PlaylistForge $Version

Windows x64 public build. Extract the complete ZIP before running PlaylistForge.exe.

SHA-256: ``$hash``

PlaylistForge is freeware supported by optional donations. It does not provide channels, subscriptions or media content.
"@
try {
    gh release create $tag $tempAsset --repo $Repository --title "PlaylistForge $Version" --notes $notes --prerelease
}
finally {
    Remove-Item -LiteralPath $tempAsset -Force -ErrorAction SilentlyContinue
}