$num1 = [int](Read-Host "Introduce el primer número")
$num2 = [int](Read-Host "Introduce el segundo número")

if ($num1 -gt $num2) {
    Write-Host "$num1 es mayor que $num2"
} elseif ($num1 -lt $num2) {
    Write-Host "$num2 es mayor que $num1"
} else {
    Write-Host "Son iguales"
}
