$nombre = Read-Host "Introduce un nombre"
$numero = Read-Host "Introduce un número"

for ($i = 0; $i -lt [int]$numero; $i++) {
    Write-Host $nombre
}
