[int] $num=Read-Host "Escribe número: "

for ($i=1; $i -le $num; $i++) {

    [int] $valor=$i*2-1
    for ($j=1; $j -le $i; $j++) {

        Write-Host "$valor " -NoNewLine
        $valor=$valor-2

    }

    Write-Host ""
}