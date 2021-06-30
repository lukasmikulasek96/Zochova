param(
	[Parameter(Mandatory = $true)]
	[string[]] $moduls,
	
	[Parameter(Mandatory = $true)]
	[string[]] $tests
)

#Set location path
Set-Location -Path ..\
$startPath = Get-Location
Write-Output "Start path: " $startPath
$katalonPath = $startPath + "FirstTest.prj"
Write-Output "Project Path: " $katalonPath
#Set Katalonc.exe folder
$katalonLocation = "E:\Katalon_Studio_Engine_Windows_64-7.9.0\Katalon_Studio_Engine_Windows_64-7.9.0\katalonc.exe"
Write-Output "Katalon Location: " $katalonLocation
#Set Test Suite Path
Set-Location '.\Test Suites\Test Collection'
$testSuites = Get-Location
Write-Output "test Suite Path: " $testSuites

foreach($modul in $moduls){
	
	
	if(Test-Path -Path .\$modul){
		Set-Location -Path .\$modul
		
		foreach($test in $tests){
			
			$fileName = $test + ".ts"

			if(Test-Path -Path .\$fileName){
				$runTest = "Test Suites\Test Collection\" +""+ $modul + "\" + $test
				"cd c/
				"
				$katalonLocation 
				-projectPath = "\""$katalonPath "\""
				-browserType = "Chrome"
				-noSplash
				-runMode = console
				-retry = 0
				-statusDelay = 15
				-testSuiteCollectionPath = "\""$runTest"\""
				-apiKey="1b614c0e-d80d-4bbf-a312-d6e2ddddce56" 
				-orgID=86673 --config 
				-proxy.auth.option=NO_PROXY 
				-proxy.system.option=NO_PROXY
				-proxy.system.applyToDesiredCapabilities=true""	
			}
		}
		
	}
	
}