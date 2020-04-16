
![tes test](https://cdn4.iconfinder.com/data/icons/logos-3/181/MySQL-512.png)


# First day:
### 1.  Install Mysql:
##### choose the version - Windows (x86, 32-bit), MSI Installer
##### and the link is as follows:
###### [Download Link](https://dev.mysql.com/downloads/installer/)

### 2.  Mysql Query:
```sql
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
'''
