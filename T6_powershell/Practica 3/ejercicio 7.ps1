[string] $contraseña="contraseña"

[string] $intento=Read-Host "Introduce contraseña"

if ($contraseña -ieq $intento) {
    Write-Host "La contraseña es correcta"
} else {
    Write-Host "La contraseña es incorrecta"
}