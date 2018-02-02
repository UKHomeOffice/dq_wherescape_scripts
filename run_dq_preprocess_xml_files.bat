@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%IL2_HOST% -w %DQ_DB_LOAD_ROOT_PATH%/scripts -s cmd /c "%PYTHON_PREPROCESS_XML_FILES_SCRIPT%" > %SCRIPTS_DIR%\run_dq_preprocess_xml_files.log 2>&1
