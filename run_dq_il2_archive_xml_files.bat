@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_il2_archive_csv_files_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

D:\SVN\dev\Wherescape\scripts\psexec /accepteula \\%IL2_HOST% -s cmd /c "%PYTHON_SCRIPT% -r=%ROOT_PATH%
pause