$nombres=@()
[int]$tamaño=Read-Host "Dime el tamaño del array"
for($i=1; $i -le $tamaño; $i++){
    $nombre=Read-Host "Introduce el nombre"
    $nombres+=$nombre
}
foreach($c in $nombres){
    Write $c
}