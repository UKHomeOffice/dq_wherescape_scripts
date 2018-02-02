@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%IL2_HOST% -s cmd /c "%PYTHON_SEQ_CHECK_SCRIPT% -r %DQ_DB_LOAD_ROOT_PATH% -s %SEQ_CHECK_SRC%" > %SCRIPTS_DIR%\run_dq_seq_check.log 2>&1