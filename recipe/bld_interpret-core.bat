@echo On

pushd python\interpret-core\
%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit 1

echo "current location: %CD%"

set "search_dir: %CD%"  REM Replace with your directory
set "file_pattern=libebm*.dll"            REM Replace with your file pattern

dir /S /B "%search_dir%\%file_pattern%"

.\build.bat
copy .\staging\libebm_win_x64.dll "%LIBRARY_BIN%\libebm.dll"
if errorlevel 1 exit 1
