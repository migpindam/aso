[int] $num=Read-Host "Escribe número entero positivo"

for ($i=1; $i -lt $num-1; $i+=2) {
    [string] $valores += "$i, "
}

if ($num%2 -ne 0) {
    $valores += "$num"
} else {
    [int] $ultimo = $num-1
    $valores += "$ultimo"
}
    

Write-Host $valores