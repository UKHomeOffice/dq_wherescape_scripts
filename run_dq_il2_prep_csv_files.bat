@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

D:\SVN\trunk\Wherescape\scripts\psexec /accepteula \\%IL2_HOST% -s cmd /c "%PYTHON_SCRIPT% --path=%DQ_DB_LOAD_ROOT_PATH% --in=%IN_DIR% --done=%DONE_DIR%
pause=======
D:\SVN\trunk\Wherescape\scripts\psexec /accepteula \\%IL2_HOST% -s cmd /c "%PYTHON_SCRIPT% --dsn=%DSN_NAME% --dbname=%DB_NAME% --dbuser=%DB_USER% --dbpass=%DB_PASSWORD% --path=%DQ_DB_LOAD_ROOT_PATH% --in=%IN_DIR% --done=%DONE_DIR% --dbschema=%DB_SCHEMA%"