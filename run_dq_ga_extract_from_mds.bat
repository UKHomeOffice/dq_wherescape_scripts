@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE REMOTE COMMAND
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%MDS_HOST% -w "%MDS_WORKING_DIR%" cmd /c sqlcmd -E -d %MDS_DB_NAME% -Q "EXEC %MDS_DB_NAME%.dbo.StartAgentJobAndWait GA_MDS_EXTRACT,30" > %SCRIPTS_DIR%\run_dq_ga_extract_from_mds.log 2>&1
