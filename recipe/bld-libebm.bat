@echo On

.\build.bat
copy .\staging\libebm_win_x64.dll "%LIBRARY_BIN%\libebm.dll"
if errorlevel 1 exit 1
