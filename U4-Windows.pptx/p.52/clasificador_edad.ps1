[int] $num = 0

do {
    $num = Read-Host "Introduce una edad: "
  
} while ($num -le 0)

$edad = [int]$num

#Categorías por los distintos rangos
if ($edad -le 5){
    $cat = "bebe"

} elseif ($edad -le 11){
    $cat = "niño"

} elseif ($edad -le 15){
    $cat = "adolescente"

} elseif ($edad -le 18){
    $cat = "menor de edad"

} elseif ($edad -le 19) {    
    $cat = "mayor de edad"

} else {
    $cat = "abuelo"
}

Write-Host "Edad: $edad"
Write-Host "Categoría: $cat"