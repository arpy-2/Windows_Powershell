$numero = Read-Host "Introduce un número"
$num = [int]$numero

if ($num -gt 0) {
    Write-Host "Positivo"
} elseif ($num -lt 0) {
    Write-Host "Negativo"
} else {
    Write-Host "Cero"
}
