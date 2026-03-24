$numeros=@()
[int]$tamaño=Read-Host "Dime el tamaño del array"
for($i=1; $i -le $tamaño; $i++){
    $numero=Read-Host "Introduce el numero"
    $numeros+=$numero
}
foreach($c in $numeros){
    if($c -gt 10){
        Write-Host $c
    }
}