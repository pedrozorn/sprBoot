#!/bin/bash

# SQL Server ���N������܂őҋ@
sleep 30s

# init.sql �X�N���v�g�����s
/opt/mssql-tools/bin/sqlcmd -S $MSSQL_HOST_NAME -U SA -P $MSSQL_SA_PASSWORD -i /docker-entrypoint-initdb.d/init.sql
