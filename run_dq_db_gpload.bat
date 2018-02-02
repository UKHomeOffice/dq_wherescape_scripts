@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%IL2_HOST% -s cmd /c "%PYTHON_GPLOAD_SCRIPT% -r %DQ_DB_LOAD_ROOT_PATH% -b %PYTHON_GPLOAD_BAT_FILE%" > %SCRIPTS_DIR%\gpload.log