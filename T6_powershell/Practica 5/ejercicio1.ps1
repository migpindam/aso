function suma ($x, $y) {
    [int] $x=Read-Host "Dame un número"
    [int] $y=Read-Host "Dame otro número"
    $resultado=$x+$y
    Write-Host "La suma es $resultado"
}

function resta ($x, $y) {
    [int] $x=Read-Host "Dame un número"
    [int] $y=Read-Host "Dame otro número"
    $resultado=$x-$y
    Write-Host "La resta es $resultado"
}

function multiplicacion ($x, $y) {
    [int] $x=Read-Host "Dame un número"
    [int] $y=Read-Host "Dame otro número"
    $resultado=$x*$y
    Write-Host "La multiplicación es $resultado"
}

function division ($x, $y) {
    [int] $x=Read-Host "Dame un número"
    [int] $y=Read-Host "Dame otro número"
    $resultado=$x/$y
    Write-Host "La división es $resultado"
}



Write-Host ""
Write-Host "***** CALCULADORA *****"
Write-Host ""
Write-Host "      1. Sumar"
Write-Host "      2. Restar"
Write-Host "      3. Multiplicar"
Write-Host "      4. Dividir"
Write-Host "      5. Salir"
Write-Host ""



[int] $opcion=Read-Host "Opcion"

switch ($opcion) {
    1 {
        suma $x $y
    }
    2 {
        resta $x $y
    }
    3 {
        multiplicacion $x $y
    }
    4 {
        division $x $y
    }
    5 {
        exit
    }
}