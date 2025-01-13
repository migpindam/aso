[int] $num=Read-Host "Escribe número: "

for ($i=1; $i -le $num; $i++) {
    for ($j=1; $j -le $i; $j++) {
        Write-Host "* " -NoNewLine
    }
    Write-Host ""
}