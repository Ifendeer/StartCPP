#------------------------------
include_Dir = -Iinclude -Isrc/headers
lib_Dir = -Llib
#------------------------------
sources = src/sources/*
resource_Dir = resources
libs = 
#------------------------------


all: release



release:
	for %%I in (.) do set CurrDirName=%%~nxI & mkdir release & xcopy $(resource_Dir) $@ /e /i /q  & g++ -g0 -o "$@/%CurrDirName%" $(include_Dir) $(lib_Dir) $(sources) $(libs)
