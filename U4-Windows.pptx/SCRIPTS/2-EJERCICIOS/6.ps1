$palabra= Read-Host "Dime una palabra"
for($i=1; $i -le $palabra.Length; $i++){
    $caracter=$palabra[$i-1]
    Write-Host "Posicion $i : $caracter"
}