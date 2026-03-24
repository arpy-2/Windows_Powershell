$num = Read-Host "Introduce una edad"

while ($num -le 0) {
    $num = Read-Host "Introduce una edad"
}

$edad = [int]$num

switch ($edad) {
    {$_ -le 5}  { $cat = "bebe"; break }
    {$_ -le 11} { $cat = "niño"; break }
    {$_ -le 15} { $cat = "adolescente"; break }
    {$_ -le 18} { $cat = "menor de edad"; break }
    {$_ -le 59} { $cat = "mayor de edad"; break }
    default     { $cat = "abuelo" }
}

Write-Host "Edad: $edad"
Write-Host "Categoría: $cat"
