Function SetProxy {
  $env:HTTPS_PROXY='http://127.0.0.1:31204'
  $env:HTTP_PROXY='http://127.0.0.1:31204'
}
Set-Alias -Name x -Value SetProxy
Set-Alias -Name open -Value explorer


Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster
Set-PSReadlineKeyHandler -Key Tab -Function Complete

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
