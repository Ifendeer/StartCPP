#------------------------------
include_Dir = -Iinclude -Isrc/headers
lib_Dir = -Llib
Compiler = g++
#------------------------------
sources = src/sources/*
resource_Dir = resources
libs = 
Output_Name = HelloWorld.exe
#------------------------------


all: release

release: clean
	echo -------------------------------- >> result.txt
	echo Copying resources to release folder:>> result.txt
	echo mkdir $@ >> result.txt
	mkdir $@ >> result.txt
	echo xcopy $(resource_Dir) $@ /e /i /q>> result.txt
	xcopy $(resource_Dir) $@ /e /i /q>> result.txt
	echo -------------------------------- >> result.txt
	echo Compiling: >> result.txt
	echo g++ -g0 -o "$@/$(Output_Name)" $(include_Dir) $(lib_Dir) $(sources) $(libs) >> result.txt
	$(Compiler) -g0 -o "$@/$(Output_Name)" $(include_Dir) $(lib_Dir) $(sources) $(libs) >> result.txt
	echo -------------------------------- >> result.txt
	if exist "$@/$(Output_Name)" (echo Build Succeessful. >> result.txt & start $@/"$(Output_Name)") else ( echo Build Failed Gracefully! >> result.txt )
clean:
	echo Cleaning previous build:> result.txt & echo rd /s /q release>> result.txt & rd /s /q release>> result.txt & @echo off
run:
	if exist "release/$(Output_Name)" (start release/"$(Output_Name)" > errorLog.txt ) else ( echo Could not run: File doesnt exist! > errorLog.txt )
cleanOnly:
	rd /s /q release & del errorLog.txt & del result.txt & @echo off