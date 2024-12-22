[int] $num1=Read-Host "Primer número"
[int] $num2=Read-Host "Segundo número"

Write-Host "****** CALCULADORA ********"
Write-Host ""
Write-Host "    1. Sumar"
Write-Host "    2. Restar"
Write-Host "    3. Multiplicar"
Write-Host "    4. Dividir"
Write-Host ""
[int] $opcion=Read-Host "¿Qué desea hacer? Elige una opción"

switch ($opcion) {
    1 {
        [int] $suma=$num1+$num2
        Write-Host "$num1 + $num2 = $suma"
    }
    2 {
        [int] $resta=$num1-$num2
        Write-Host "$num1 - $num2 = $resta"
    }
    3 {
        [int] $multiplicacion=$num1*$num2
        Write-Host "$num1 x $num2 = $multiplicacion"
    }
    4 {
        [double] $division=$num1/$num2
        Write-Host "$num1 / $num2 = $division"
    }
}