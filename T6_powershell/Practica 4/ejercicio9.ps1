[string] $contraseña="contraseña"

do {
    [string] $intento=Read-Host "Escribe la contraseña: "
} while ($intento -ne $contraseña)

Write-Host ""
Write-Host "Contraseña correcta"