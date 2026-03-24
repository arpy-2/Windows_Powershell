$name=Read-Host "Dime tu nombre"
$number=Read-Host "Dime un numero"

for($i=1; $i -le $number; $i++){
    Write-Host $name
}