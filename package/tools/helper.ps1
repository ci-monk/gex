function IsVersionAlreadyInstalled {
    param($version)

    if ($env:ChocolateyForce) { return $false }

    [array]$keys = Get-UninstallRegistryKey -SoftwareName "habbo" | Where-Object { $_.DisplayVersion -and $_.DisplayVersion -eq $version }

    return $keys.Count -gt 0
}
