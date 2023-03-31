Import-Module -Name Terminal-Icons
Import-Module -Name PSReadLine
# Import-Module -Name z
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

.$env:USERPROFILE\Documents\PowerShell\user_profile.ps1

oh-my-posh --init --shell pwsh --config C:\Users\Admin\Documents\PowerShell\ohMyPoshTHTtheme.json | Invoke-Expression