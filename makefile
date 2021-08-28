#------------------------------
Compiler = g++
AddDirectories = -Iinclude -Llib
sources = src/sources/* lib/*
libs = 
Output_Name = source.exe
#------------------------------


all: release

release:
	powershell 'if((Test-Path "resources") -and !(Test-Path "bin\resources")){Copy-item -Recurse -Path "resources" -Destination "bin"}'
	powershell '&{ $(Compiler) -g0 -mwin32 -O2 $(AddDirectories) -o "bin/$(Output_Name)" -static ${sources} ${libs}}2>&1>result.txt'
	powershell 'if(Test-Path "bin\$(Output_Name)"){ Start-Process -FilePath "bin\$(Output_Name)" -WorkingDirectory "bin" }else{ Write-Output "bin\$(Output_Name) not found" }'
run:
	powershell 'if(Test-Path "bin\$(Output_Name)"){ Start-Process -FilePath "bin\$(Output_Name)" -WorkingDirectory "bin" }else{ Write-Output "bin\$(Output_Name) not found" }'
clean:
	powershell 'if(Test-Path "bin"){Remove-Item -LiteralPath "bin" -Recurse}'
	powershell 'New-Item -ItemType Directory -Path "bin" | Out-Null'
pushrsc:
	powershell 'if(Test-Path "bin\resources"){Remove-Item -LiteralPath "bin\resources" -Recurse}'
	powershell 'if(Test-Path "resources"){Copy-item -Recurse -Path "resources" -Destination "bin"}'