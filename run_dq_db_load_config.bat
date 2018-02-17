rem *************************************************************
rem *** VARIABLES TO CHANGE
rem *** Where paths include whitespace, wrap in double-quotes
rem *** When specifying folders, use forward-slashes, e.g. "D:/dirname/archive"
rem *************************************************************

set IL2_HOST=XXXXXXXX
set WFLS_DIR=\\XXXXXX\RAW_ARCHIVE
set TABLEAU_CMD_LINE_UTIL_ROOT=C:/tableau_script/command_line_utility
set TABLEAU_PASSWORD=XXXXXXX
set TABLEAU_SERVER=XXXXXX

set MDS_HOST=XXXX
set MDS_EXTRACT_FILE=ga_mds_extract.csv
set MDS_WORKING_DIR=D:\ga_pg_extract\scripts
set MDS_DB_NAME=DQ_HO_MDS_NRT

set SCRIPTS_DIR=D:/SVN/trunk/Wherescape/scripts/nrt

set TABLEAU_USERNAME=tab_script
set TABLEAU_SITE=DQDashboardsE

set PSEXEC_EXE=D:/SVN/trunk/Wherescape/scripts/psexec.exe
set PYTHON_SEQ_CHECK_SCRIPT=C:/Python25/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_Seq_Check.py
set PYTHON_PREP_XML_FILES_SCRIPT=C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_Prep_XML_files.py
set PYTHON_PREPROCESS_XML_FILES_SCRIPT=C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_PreProcess_XML_Files.py

set PYTHON_GPLOAD_SCRIPT=C:/Python25/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_DB_GP_Load_XML.py
set PYTHON_GPLOAD_BAT_FILE=E:/dq/nrt/s4_file_ingest/scripts/GPLOAD.bat

set PYTHON_GPLOAD_LOAD_VOYAGE_EXTERNAL_SCRIPT=C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_DB_GP_Load_XML_voyage_ext.py
set PYTHON_GPLOAD_LOAD_VOYAGE_EXTERNAL_BAT_FILE=E:/dq/nrt/s4_file_ingest/scripts/GPLOAD_load_voyage_external.bat
set PYTHON_GPLOAD_LOAD_FMS_CARRIER_VOLUME_TYPE_BAT_FILE=E:/dq/nrt/s4_file_ingest/scripts/GPLOAD_load_fms_carrier_volume_type.bat
set PYTHON_GPLOAD_LOAD_FMS_FRAME_BAT_FILE=E:/dq/nrt/s4_file_ingest/scripts/GPLOAD_load_fms_frame.bat
set PYTHON_GPLOAD_LOAD_FMS_FRAME_MODULES_BAT_FILE=E:/dq/nrt/s4_file_ingest/scripts/GPLOAD_load_fms_frame_modules.bat
set PYTHON_GPLOAD_LOAD_FMS_MODULE_BAT_FILE=E:/dq/nrt/s4_file_ingest/scripts/GPLOAD_load_fms_module.bat
set PYTHON_GPLOAD_LOAD_FMS_VOLUME_TYPE_BAT_FILE=E:/dq/nrt/s4_file_ingest/scripts/GPLOAD_load_fms_volume_type.bat

set PYTHON_ARCHIVE_FILE=C:/Python25/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_Archive_XML_files.py

set PYTHON_GA_POSTGRES_LOAD_MDS=C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_DB_GA_Postgres_Load_MDS.py
set PYTHON_GA_POSTGRES_LOAD_XML=C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_DB_GA_Postgres_Load_XML.py
set PYTHON_GA_POSTGRES_LOAD_FPL=C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_DB_GA_Postgres_Load_FPL.py
set PYTHON_GA_POSTGRES_PROCS=C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_DB_GA_Postgres_Procs.py

set PYTHON_GA_ARCHIVE_FILES=C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_DB_GA_Archive_Files.py

set DQ_DB_LOAD_ROOT_PATH=E:/dq/nrt/s4_file_ingest
set IN_DIR=out
set DONE_DIR=archive
set ARCHIVE_DIR=archive
set OUT_DIR=done
set MAXFILES=2000
set XML_INPROCESS_DIR=E:/dq/nrt/s4_file_ingest/xml_inprocess
set XML_DIR=E:/dq/nrt/s4_file_ingest/xml
set SEQ_CHECK_SRC=E:/dq/nrt/s4_file_ingest/FTP_landingzone/done

set PYTHON_RAW_MSG_GUID_SCRIPT=C:/Python27/Python.exe E:/dq/nrt/s4_file_ingest/scripts/DQ_IL2_index_raw_msg.py
set RAW_INPROCESS_DIR=raw_inprocess
set RAW_MSG_GUID_CSV_DIR=raw_message_guid_csv
set PYTHON_GPLOAD_RAW_MSG_GUID_BAT_FILE=GPLOAD_load_raw_message_guid.bat

set GPLOAD_RETRY_INT=5
set PYTHON_GPLOAD_LOAD_NBTC_PARAMETERS_BAT_FILE=E:/dq/nrt/s4_file_ingest/scripts/GPLOAD_load_nbtc_parameters.bat
set PYTHON_GPLOAD_LOAD_NBTC_PARAMETERS_EXT_BAT_FILE=E:/dq/nrt/s4_file_ingest/scripts/GPLOAD_load_nbtc_parameters_ext.bat
