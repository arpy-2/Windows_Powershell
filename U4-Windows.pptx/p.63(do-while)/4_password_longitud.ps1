$minimo = 8

do {
    $password = Read-Host "Introduce una contraseña (mínimo $minimo caracteres)"
    
    if ($password.length -lt $minimo) {
        Write-Host "La contraseña debe tener al menos $minimo caracteres"
    }
} while ($password.length -lt $minimo)

Write-Host "Contraseña válida"
