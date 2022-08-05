function Get-AgileManifesto {
  $ScriptHome = $PSScriptRoot
  $ManifestoFilePath = Join-Path $ScriptHome "AgileManifesto.json"

  $FoundManifesto = Test-Path $ManifestoFilePath
  if ( -not $FoundManifesto ) {
    Write-Warning "Failed to locate the Agile Manifesto JSON file at the below path"
    Write-Warning $ManifestoFilePath
    throw
  }

  $ManifestoObject = Get-Content $ManifestoFilePath | ConvertFrom-Json

  Write-Output $ManifestoObject
} # End function
