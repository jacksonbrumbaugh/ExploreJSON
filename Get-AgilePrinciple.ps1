function Get-AgilePrinciple {
  $ScriptHome = $PSScriptRoot
  $PrincipleFilePath = Join-Path $ScriptHome "AgilePrinciples.json"

  $FoundPrinciple = Test-Path $PrincipleFilePath
  if ( -not $FoundPrinciple ) {
    Write-Warning "Failed to locate the Agile Principle JSON file at the below path"
    Write-Warning $PrincipleFilePath
    throw
  }

  $PrincipleObject = Get-Content $PrincipleFilePath | ConvertFrom-Json

  Write-Output $PrincipleObject
} # End function
