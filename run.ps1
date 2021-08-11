$output = Split-Path -Path ($PSScriptRoot) -Leaf

Write-Output "`n"

if(Test-Path release\$output.exe -PathType Leaf){
    
    Write-Output "Output = release\$output.exe"
    Write-Output "Build complete."
    Start-Process release\$output.exe
}else{
    Write-Output "Build failed."
}