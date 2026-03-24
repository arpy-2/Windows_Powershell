$numeros = @(5, 12, 8, 20, 3, 15, 10, 25)

foreach ($num in $numeros) {
    if ($num -gt 10) {
        Write-Host $num
    }
}
