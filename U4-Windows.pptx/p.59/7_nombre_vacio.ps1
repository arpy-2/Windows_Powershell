$nombre = Read-Host "Introduce un nombre"

if ($nombre -eq "") {
    Write-Host "El nombre está vacío"
} else {
    Write-Host "El nombre no está vacío"
}
