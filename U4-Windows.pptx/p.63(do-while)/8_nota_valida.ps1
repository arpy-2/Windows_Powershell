do {
    $nota = [int](Read-Host "Introduce una nota del 0 al 10")
    
    if ($nota -lt 0 -or $nota -gt 10) {
        Write-Host "Nota no válida. Debe ser entre 0 y 10"
    }
} while ($nota -lt 0 -or $nota -gt 10)

Write-Host "Nota válida: $nota"
