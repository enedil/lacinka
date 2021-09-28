rem Requires "Microsoft Keyboard Layout Creator installed
@echo off

set MSKLC=%ProgramFiles(x86)%\Microsoft Keyboard Layout Creator 1.4
set kbdutool=%MSKLC%\bin\i386\kbdutool.exe

del *.dll

for /f "usebackq delims=" %%f in (`dir /b "*.klc"`) do (

if not exist "%%~nf" mkdir "%%~nf"

"%kbdutool%" -u -x "%%f"
if not exist "%%~nf"\i386 mkdir "%%~nf"\i386
move /y *.dll "%%~nf"\i386\

"%kbdutool%" -u -m "%%f"
if not exist "%%~nf"\amd64 mkdir "%%~nf"\amd64
move /y *.dll "%%~nf"\amd64\

"%kbdutool%" -u -o "%%f"
if not exist "%%~nf"\wow64 mkdir "%%~nf"\wow64
move /y *.dll "%%~nf"\wow64\

"%kbdutool%" -u -i "%%f"
if not exist "%%~nf"\ia64 mkdir "%%~nf"\ia64
move /y *.dll "%%~nf"\ia64\

)

@pause


