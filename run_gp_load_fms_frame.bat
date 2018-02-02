REM @echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%IL2_HOST% -s cmd /c "%PYTHON_GPLOAD_LOAD_FMS_FRAME_BAT_FILE%" > %SCRIPTS_DIR%\run_gp_load_fms_frame.log 2>&1
