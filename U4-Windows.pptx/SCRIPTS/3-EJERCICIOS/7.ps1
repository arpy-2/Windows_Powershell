$palabras=@()
[int]$tamaño=Read-Host "Dime el tamaño del array"
for($i=1; $i -le $tamaño; $i++){
    $palabra=Read-Host "Introduce la palabra"
    $palabras+=$palabra
}
$letra=Read-Host "Introduce la letra"
foreach($c in $palabras){
    if($c.StartsWith($letra) -or $c.StartsWith($letra.ToUpper())){
        Write-Host $c
    }
}