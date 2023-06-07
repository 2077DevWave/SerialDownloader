@echo off
setlocal enabledelayedexpansion

set "string=https://dl2.soft98.ir/soft/s/Simple.Sticky.Notes.6.0.$.rar?1686175455"
set /p "start=enter start number: "
set /p "end=enter end number: "
set /p "fileName=enter a file name: "
set /p "fileType=enter a file type (.txt,.mkv,.exe,...) : "
set "link="

for /l %%i in (%start%, 1, %end%) do (
    set "line=!string!"
    set "line=!line:$=%%i!"
    php -r "try{copy('!line!','%fileName%_%%i%fileType%');}catch(e){}"
)

echo Result: %result%

endlocal
