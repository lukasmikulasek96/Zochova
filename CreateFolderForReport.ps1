param (
	[Parameter (Mandatory = $true)]
	[string] $buildNumber
)

$startPath = Get-Location
Write-Output "Start path: " $startPath
Set-Location -Path \\fido\KatalonResults

#$newDirectory = $build + "_" + $buildNumber 

New-Item -ItemType Directory -Path \\fido\KatalonResults\$buildNumber

exit