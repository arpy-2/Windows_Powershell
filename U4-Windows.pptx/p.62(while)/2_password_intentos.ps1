$password_correcta = "1234"
$intentos = 0
$password = Read-Host "Introduce la contraseña"
$intentos++

while ($password -ne $password_correcta) {
    Write-Host "Contraseña incorrecta"
    $password = Read-Host "Introduce la contraseña"
    $intentos++
}

Write-Host "Contraseña correcta. Intentos realizados: $intentos"
