@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%IL2_HOST% -w %DQ_DB_LOAD_ROOT_PATH%/scripts -s cmd /c "%PYTHON_GA_POSTGRES_PROCS%" > %SCRIPTS_DIR%\run_dq_db_ga_postgres_procs.log 2>&1
