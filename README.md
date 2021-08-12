# StartCPP
A simple and super lightweight mingw Dev Environment for c++ programmers in windows
```diff
+ Pros:
  1. No more waiting for Visual Studio to start, 
      (cause we'll be using vscode or any other text editor really!😉)
  2. Super lightweight, only kilobytes in size.
```

```diff
- Cons:
  1. Does require to install mingw
  2. Only works in windows (for now 😒)
```

## Installation:
* Method 1:
  * Install Mingw.
  * Just **clone** the repo.
* Method 2:
  * Install Mingw.
  * Download as **zip** file.
  * Extract "wherever" you want.
  

## Use:
* Place your **.cpp** files in `src/sources` folder.
* Place your **.h** files in `include/headers` folder.
* Build & Run by running corresponding **.bat** file.
* The compiled program will be stored in `release` folder.
* The Build log will be stored in **result.txt**
- [x] Bonus Tips:
  * Change `Output_Name` variable in makefile to change the name of compiled executable.
  * Add libraries to linker by adding to `libs` variable in **makefile**.
  * If you really want to use gcc (to compile C program only) instead of g++ (compiles C++), change variable `Compiler` in **makefile** to `gcc`.
  * If you're using vscode, you can use `Code Runner` extension to run **build.bat** and **run.bat** from within vscode!
  * To use `Code Runner` install it on vscode. Then right click on **build.bat** and select `Run Code`.
  * Learn some makefile coding to modify the compiling process to your liking!
  * Check out my other projects here -> [Github/Ifendeer](https://github.com/Ifendeer)  ``https://github.com/Ifendeer``
