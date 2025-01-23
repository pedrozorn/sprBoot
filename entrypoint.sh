#!/bin/bash

# SQL Server が起動するまで待機
sleep 30s

# init.sql スクリプトを実行
/opt/mssql-tools/bin/sqlcmd -S $MSSQL_HOST_NAME -U SA -P $MSSQL_SA_PASSWORD -i /docker-entrypoint-initdb.d/init.sql
