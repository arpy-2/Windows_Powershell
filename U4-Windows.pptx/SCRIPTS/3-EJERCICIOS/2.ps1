$numeros=@()
[int]$tamaño=Read-Host "Dime el tamaño del array"
for($i=1; $i -le $tamaño; $i++){
    $numero=Read-Host "Introduce el nombre"
    $numeros+=$numero
}
[int]$suma=0
foreach($c in $numeros){
    $suma= $suma + $c 
}

Write-Host $suma