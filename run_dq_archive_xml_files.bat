@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%IL2_HOST% -s cmd /c "%PYTHON_ARCHIVE_FILE% -r %DQ_DB_LOAD_ROOT_PATH%" > %SCRIPTS_DIR%\run_dq_archive_xml_files.log 2>&1