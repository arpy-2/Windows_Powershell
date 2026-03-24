$nombres = @("Ana", "Luis", "Carlos", "Marta", "Andrés", "Pedro", "Alberto")
$letra = Read-Host "Introduce una letra"

foreach ($nombre in $nombres) {
    if ($nombre[0] -eq $letra) {
        Write-Host $nombre
    }
}
