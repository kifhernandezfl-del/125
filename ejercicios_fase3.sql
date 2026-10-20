CREATE USER DBA_2204 IDENTIFIED BY "123";
GRANT DBA TO DBA_2204;
EXIT

CREATE TABLESPACE ordenes1 DATAFILE '/home/oracle/disco/ordenes1.dbf' SIZE 10M;
CREATE TABLESPACE ordenes2 DATAFILE '/home/oracle/disco/ordenes2.dbf' SIZE 15M;

SET LINESIZE 200
COL file_name FORMAT A50
SELECT tablespace_name, file_name, bytes/1024/1024 AS mb FROM dba_data_files;
