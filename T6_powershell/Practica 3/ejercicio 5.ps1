[string] $nom=Read-Host "Dime un archivo o un fichero"

if (Test-Path $nom) {
    Write-Host "Existe"
} else {
    Write-host "No existe"
}