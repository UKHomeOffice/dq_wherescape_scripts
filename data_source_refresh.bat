@echo off

rem *************************************************************
rem *** CALL THE CONFIG FILE
rem *************************************************************

call %~dp0\run_dq_db_load_config.bat

rem *************************************************************
rem *** RUN THE PYTHON SCRIPT
rem *************************************************************

%TABLEAU_CMD_LINE_UTIL_ROOT%\tabcmd login --server https://%TABLEAU_SERVER% --no-certcheck --username %TABLEAU_USERNAME% --password %TABLEAU_PASSWORD% --site %TABLEAU_SITE% > %SCRIPTS_DIR%\data_source_refresh.log
%TABLEAU_CMD_LINE_UTIL_ROOT%\tabcmd refreshextracts --datasource Cv_Exploratory_Inbound_SP_NRT_External --no-certcheck >> %SCRIPTS_DIR%\data_source_refresh.log
%TABLEAU_CMD_LINE_UTIL_ROOT%\tabcmd refreshextracts --datasource Cv_Exploratory_Outbound_SP_NRT_External --no-certcheck >> %SCRIPTS_DIR%\data_source_refresh.log
%TABLEAU_CMD_LINE_UTIL_ROOT%\tabcmd refreshextracts --datasource Tp_Exploratory_Inbound_SP_NRT_External --no-certcheck >> %SCRIPTS_DIR%\data_source_refresh.log 
%TABLEAU_CMD_LINE_UTIL_ROOT%\tabcmd refreshextracts --datasource Tp_Exploratory_Outbound_SP_NRT_External --no-certcheck >> %SCRIPTS_DIR%\data_source_refresh.log
%TABLEAU_CMD_LINE_UTIL_ROOT%\tabcmd logout >> %SCRIPTS_DIR%\data_source_refresh.log