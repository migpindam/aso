[int] $aleatorio=Get-Random -Minimum 0 -Maximum 100

do {
    [int] $num=Read-Host "Adivina el número: "

    if ($num -lt $aleatorio) {
        Write-Host "El número es mayor"
    } elseif ($num -gt $aleatorio) {
        Write-host "El número es menor"
    }
} while ($num -ne $aleatorio)

Write-Host "Exacto!"