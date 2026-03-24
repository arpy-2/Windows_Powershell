$palabras=@()
$tamaño=Read-Host "Dime el tamaño del array"
for($i=1; $i -le $tamaño; $i++){
    $palabra=Read-Host "Introduce el nombre"
    $palabras+=$palabra
}
Write-Host "La longitud es de "$palabras.Length