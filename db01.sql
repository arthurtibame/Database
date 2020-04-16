-- create db01 and check the database whether it exisits or not
-- 1.
CREATE DATABASE IF NOT EXISTS db01;
-- 2. 
CREATE SCHEMA IF NOT EXISTS db02;

-- select "db01" database
use db01; 

-- show all databases
SHOW DATABASES;

-- show all charsets
SHOW CHARSET;

-- show specific collation
SHOW COLLATION LIKE 'big5%';

-- modify db02 collation
-- choose database
ALTER DATABASE db02
	-- choose character set 
	CHARACTER SET big5  
    -- choose collate
	COLLATE big5_bin;  
