$nota = [int](Read-Host "Introduce una nota del 0 al 10")

if ($nota -ge 5 -and $nota -le 10) {
    Write-Host "Aprobado"
} elseif ($nota -ge 0 -and $nota -lt 5) {
    Write-Host "Suspenso"
} else {
    Write-Host "Nota no válida"
}
