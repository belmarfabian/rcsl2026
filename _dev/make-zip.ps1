Set-Location "G:\Mi unidad\CEP\5_Servicio_Academico\5.1_RCSL_2026\web"
Remove-Item "rcsl2026-sitio-udp.zip" -ErrorAction SilentlyContinue
$excluir = @(
    '4 2026 Questions RCSL WG (1).docx',
    '4 2026 Questions RCSL WG (1).pdf',
    '5 20216 Precios.docx',
    'temp_questions.txt'
)
$files = Get-ChildItem -Path "G:\Mi unidad\CEP\5_Servicio_Academico\5.1_RCSL_2026\web" -File | Where-Object { $_.Name -notmatch '^\.' -and $_.Name -ne 'rcsl2026-sitio-udp.zip' -and $_.Name -ne 'robots.txt' -and $excluir -notcontains $_.Name }
$temp = Join-Path $env:TEMP "rcsl-zip-temp"
if (Test-Path $temp) { Remove-Item $temp -Recurse -Force }
New-Item $temp -ItemType Directory | Out-Null
foreach ($f in $files) { Copy-Item $f.FullName -Destination $temp }
Compress-Archive -Path "$temp\*" -DestinationPath "G:\Mi unidad\CEP\5_Servicio_Academico\5.1_RCSL_2026\web\rcsl2026-sitio-udp.zip"
Remove-Item $temp -Recurse -Force
Write-Host "ZIP created:"
Get-ChildItem "G:\Mi unidad\CEP\5_Servicio_Academico\5.1_RCSL_2026\web\rcsl2026-sitio-udp.zip" | Select-Object Name, Length
