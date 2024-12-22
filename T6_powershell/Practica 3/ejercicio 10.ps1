[string] $nivel=Read-Host "Nivel del empleado (Inaceptable/Aceptable/Meritorio)"
[double] $punt=0.0

if ($nivel -ieq "Inaceptable") {
    Write-Host "Su puntuación en de $punt"
} elseif ($nivel -ieq "Aceptable") {
    $punt=0.4
    Write-Host "Su puntuación es de $punt"
} elseif ($nivel -ieq "Meritorio") {
    $punt=Read-Host "Dime una puntuación de 0.6 o superior"
} else {
    Write-Host "Opción no aceptada"
    exit
}

$premio=$punt*2400

Write-Host "Se le debe dar un total de $premio €"