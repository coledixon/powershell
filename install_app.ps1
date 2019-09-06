# reinstall all apps for all user

Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

# install a specific package
Get-AppXPackage -Register "C:\Program Files\WindowsApps\*Windows.Photos*\AppxManifest.xml" -DisableDevelopmentMode