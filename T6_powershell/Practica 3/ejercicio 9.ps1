[int]  $renta=Read-Host "Dime tu renta anual"

switch ($renta) {
    {$_ -le 10000} 
        {Write-Host "Tipo impositivo: 5%"}
    {$_ -gt 10000 -and $_ -le 20000}
        {Write-Host "Tipo impositivo: 15%"}
    {$_ -gt 20000 -and $_ -le 35000}
        {Write-Host "Tipo impositivo: 20%"}
    {$_ -gt 35000 -and $_ -le 60000}
        {Write-Host "Tipo impositivo: 30%"}
    default
        {Write-Host "Tipo impositivo: 45%"}
}