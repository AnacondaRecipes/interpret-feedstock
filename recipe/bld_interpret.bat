@echo On

cd python\interpret\
%PYTHON% -m pip install . -vv --no-deps --no-build-isolation
if errorlevel 1 exit 1
