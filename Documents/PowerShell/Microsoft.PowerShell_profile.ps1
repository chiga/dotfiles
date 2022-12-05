Import-Module Terminal-Icons
#Import-Module Posh-Git
Import-Module PSReadLine



$ENV:STARSHIP_CONFIG = "$HOME\.starship\starship.toml"
$ENV:STARSHIP_DISTRO = " "
#    
Invoke-Expression (&starship init powershell)

#Set-PoshPrompt -Theme ~/pwsh10k.omp.json

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward


# ALIAS
#Set-Alias lvim 'C:\Users\chiga\.local\bin\lvim.ps1'
Function CHEZCD {Set-Location -Path C:\Users\chiga\.local\share\chezmoi}
Set-Alias -Name chezmoicd -Value CHEZCD

Function HOM {Set-Location -Path C:\Users\chiga}
Set-Alias -Name home -Value HOM


Clear-Host



