@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

"%PSEXEC_EXE%" /accepteula \\%IL2_HOST% -w %DQ_DB_LOAD_ROOT_PATH%/scripts -s cmd /c "C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/NATS_IL2_SFTP_MDS_Extract.py"  > %SCRIPTS_DIR%\run_nats_il2_sftp_mds_extract.log 2>&1