[int] $num1=Read-Host "Primer número"
[int] $num2=Read-Host "Segundo número"

if ($num1 -eq $num2) {
    Write-Host "Son iguales"
} elseif ($num1 -gt $num2) {
    Write-host "$num1 es mayor que $num2"
} else {
    Write-host "$num1 es menor que $num2"
}
