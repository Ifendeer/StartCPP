#------------------------------
include_Dir = -Iinclude -Isrc/headers
lib_Dir = -Llib
#------------------------------
sources = src/sources/*
resource_Dir = resources
libs = 
#------------------------------


all: release

release: clean
	echo -------------------------------- >> result.txt
	echo Making a Release folder: >> result.txt
	echo mkdir $@ >> result.txt
	mkdir $@ >> result.txt
	echo -------------------------------- >> result.txt
	echo Copying resources to destination:>> result.txt
	echo xcopy $(resource_Dir) $@ /e /i /q>> result.txt
	xcopy $(resource_Dir) $@ /e /i /q>> result.txt
	echo -------------------------------- >> result.txt
	echo Compiling: >> result.txt
	echo g++ -g0 -o "$@/$(notdir $(CURDIR))" $(include_Dir) $(lib_Dir) $(sources) $(libs) >> result.txt
	g++ -g0 -o "$@/$(notdir $(CURDIR))" $(include_Dir) $(lib_Dir) $(sources) $(libs) >> result.txt
	echo -------------------------------- >> result.txt
	if exist "$@/$(notdir $(CURDIR)).exe" (echo Build Succeessful. >> result.txt & start $@/"$(notdir $(CURDIR).exe)") else ( echo Build Failed Gracefully! >> result.txt)
clean:
	echo Cleaning previous build:> result.txt & echo rd /s /q release>> result.txt & rd /s /q release>> result.txt & @echo off
run:
	if exist "release/$(notdir $(CURDIR)).exe" ( start release/"$(notdir $(CURDIR).exe") > errorLog.txt) else ( echo Could not run: File doesnt exist! > errorLog.txt)