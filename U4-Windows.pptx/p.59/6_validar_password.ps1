$password = Read-Host "Introduce una contraseña"

if ($password.length -ge 8) {
    Write-Host "Contraseña válida"
} else {
    Write-Host "La contraseña debe tener al menos 8 caracteres"
}
