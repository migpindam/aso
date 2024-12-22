[string] $sexo=Read-Host "Eres Hombre (H) o Mujer (M)?"
[string] $nombre=Read-Host "Cómo te llamas?"

if ($sexo -ieq "H") {
    if ($nombre -match "^[a-m]") {
        Write-Host "Perteneces al grupo B"
    } elseif ($nombre -match "^[n-z]") {
        Write-Host "Perteneces al grupo A"
    } else {
        Write-Host "Señor, ese nombre no existe"
    }
} elseif ($sexo -ieq "M") {
    if ($nombre -match "^[a-m]") {
        Write-Host "Perteneces al grupo A"
    } elseif ($nombre -match "^[n-z]") {
        Write-Host "Perteneces al grupo B"
    } else {
        Write-Host "Señora, ese nombre no existe"
    }
} else {
    Write-Host "Puede que ese sexo no exista"
}