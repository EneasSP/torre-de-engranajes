# Arma index.html (para GitHub Pages) a partir de torre-de-engranajes.html
# y empaqueta todo el proyecto en dist\torre-de-engranajes-v<VERSION>.zip
$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$version = (Get-Content -Raw -Encoding UTF8 (Join-Path $root 'VERSION')).Trim()
$src = Get-Content -Raw -Encoding UTF8 (Join-Path $root 'torre-de-engranajes.html')

# Todo lo anterior a <main va en <head>; el resto en <body>
$cut = $src.IndexOf('<main')
if ($cut -lt 0) { throw 'No se encontro <main en torre-de-engranajes.html' }
$head = $src.Substring(0, $cut).Trim()
$body = $src.Substring($cut).Trim()

$html = @"
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font-size:14px}[hidden]{display:none!important}</style>
$head
</head>
<body>
$body
</body>
</html>
"@
$utf8 = New-Object System.Text.UTF8Encoding($false)
[IO.File]::WriteAllText((Join-Path $root 'index.html'), $html, $utf8)

$dist = Join-Path $root 'dist'
New-Item -ItemType Directory -Force $dist | Out-Null
$zip = Join-Path $dist "torre-de-engranajes-v$version.zip"
if (Test-Path $zip) { Remove-Item $zip -Force }
$files = Get-ChildItem $root -File | Where-Object { $_.Name -notlike '*.zip' }
Compress-Archive -Path $files.FullName -DestinationPath $zip
Write-Output "index.html y $zip listos (v$version)"
