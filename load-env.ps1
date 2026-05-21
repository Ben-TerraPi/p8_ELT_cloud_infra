# load-env.ps1
$envContent = Get-Content .env
foreach ($line in $envContent) {
    if ($line -and -not $line.StartsWith("#")) {
        $parts = $line.Split("=", 2)
        if ($parts.Length -eq 2) {
            [Environment]::SetEnvironmentVariable($parts[0].Trim(), $parts[1].Trim())
        }
    }
}
Write-Host "Variables d'environnement chargees"