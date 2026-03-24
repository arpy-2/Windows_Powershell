$palabras=@()
[int]$tamaño=Read-Host "Dime el tamaño del array"
for($i=1; $i -le $tamaño; $i++){
    $palabra=Read-Host "Introduce la palabra"
    $palabras+=$palabra
}
foreach($c in $palabras){
    Write-Host $c.toUpper() 
}