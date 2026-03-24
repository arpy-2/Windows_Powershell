$palabra = Read-Host "Introduce una palabra (mínimo 6 caracteres)"

while ($palabra.length -le 5) {
    Write-Host "La palabra debe tener más de 5 caracteres"
    $palabra = Read-Host "Introduce una palabra"
}

Write-Host "Palabra válida: $palabra"
