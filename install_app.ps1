# installing applications (often an issue related to no items on Start Menu)

## reinstall all Windows applications
Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

## install a specific package
Get-AppXPackage -Register "C:\Program Files\WindowsApps\*Windows.Photos*\AppxManifest.xml" -DisableDevelopmentMode