$notas = @(4, 7, 5, 8, 3, 9, 6, 2, 10)
$aprobadas = 0

foreach ($nota in $notas) {
    if ($nota -ge 5) {
        $aprobadas++
    }
}

Write-Host "Notas aprobadas: $aprobadas"
