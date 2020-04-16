
![tes test](https://cdn4.iconfinder.com/data/icons/logos-3/181/MySQL-512.png)


# First day:
### 1.  Install Mysql:
##### choose the version - Windows (x86, 32-bit), MSI Installer
##### and the link is as follows:
###### [Download Link](https://dev.mysql.com/downloads/installer/)

### 2.  Mysql Query:
##### a. Create Database (here means db01) and check whether it exists or not 
```sql
CREATE DATABASE IF NOT EXISTS db01;
```
##### > Or there is an alternative in mysql
```sql
CREATE SCHEMA IF NOT EXISTS db02;
```
##### b. The method of show all databases
```sql
SHOW DATABASES;
```
##### c. The method of show all charsets
```sql
SHOW CHARSET;
```
##### d. Show specific collation
```sql
SHOW COLLATION LIKE 'big5%';
```
##### e. Modify db02 collation
```sql
-- choose database
ALTER DATABASE db02
	-- choose character set 
	CHARACTER SET big5  
  -- choose collate
	COLLATE big5_bin;  
