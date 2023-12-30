# my_posh: oh-my-posh profile

## profile:
- **dir**:
  - C:\Users\0\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
- **command**: 
  - code $PROFILE

## Install plugins:
- **command**: 
  - Import-Module Terminal-Icons
  - Install-Module PSReadLine -Scope CurrentUser -Force
  - Import-Module posh-git

## Themes:
- **command**:
  - Get-PoshThemes 
  - Set-PoshPrompt -Theme name-of-theme