[int]$numero=read-Host "Dime un numero"
if($numero -eq 0){
    Write-Host "Es cero"
}elseif($numero -gt 0){
    Write-Host "Es positivo"
} else {
    Write-Host "Es negativo"
}

