@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%IL2_HOST% -s cmd /c "%PYTHON_CSV_SCRIPT% --path=%DQ_DB_LOAD_ROOT_PATH% --in=%IN_DIR% --done=%DONE_DIR% --out=%OUT_DIR% --maxfiles=%MAXFILES%" > %SCRIPTS_DIR%\dq_db_load.log

