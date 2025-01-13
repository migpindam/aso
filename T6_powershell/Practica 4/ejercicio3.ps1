[int] $num=Read-Host "Escribe un número entero positivo"

while ($num -gt 0) {
    Write-Host "$num, " -NoNewLine
    $num--
    sleep 1
}

Write-Host "$num"