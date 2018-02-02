@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%IL2_HOST% -s -w %DQ_DB_LOAD_ROOT_PATH%/scripts cmd /c "%PYTHON_RAW_MSG_GUID_SCRIPT%" > %SCRIPTS_DIR%\run_dq_raw_message_guid.log 2>&1
