[string] $nom=Read-Host "Dime un directorio"

if (Test-Path $nom -PathType Container) {
    dir -Recurse $nom
} else {
    Write-Host "O no existe o no es un directorio."
}