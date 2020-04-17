![tes test](https://cdn4.iconfinder.com/data/icons/logos-3/181/MySQL-512.png)


# Second day:

| Main Points  			                  |     syntax               |
| ------------------------------------|:------------------------:|
| Create Table		                    |   CREATE TABLE table_name(col_name col_definition)| 
| Show table status                   |   SHOW TABLE IN db_name   | 
| Description of table   	            |   DESC db_name.tb_name     		          |  
| Change column type                  |   ALTER TABLE tb_name Modify col_name col_type [position]	    		          |  
| Add new column                      |   ALTER TABLE tb_name ADD col_name col_type [position]	    		            |
| Rename column	                      |   ALTER TABLE tb_name RENAME COLUMN col_name TO new_col_name 	              |
| Get datetime now                    |   SELECT SYSDATE(); SELECT NOW();       	            |
| Round       		                    |   ROUND(conditions)  	            |
| Calculate date difference 	        |   DATEDIFF(....)     	            |
  
  

### 1. Create table employee:
```sql
CREATE TABLE IF NOT EXISTS db01.employee(
    empno		DECIMAL(4)		PRIMARY KEY,
    ename		VARCHAR(30)		NOT NULL,
    hiredate	DATE			NOT NULL,
    salary		INT 			NOT NULL,
    deptno		DECIMAL(3)		NOT NULL,
    title		VARCHAR(20)		NOT NULL
);
```

### 2. Create table department:

```sql
CREATE TABLE IF NOT EXISTs `db01`.`department` (
  `deptno` DECIMAL(3) NOT NULL,
  `dname` VARCHAR(30) NOT NULL,
  `mgrno` DECIMAL(4) NULL,
  PRIMARY KEY (`deptno`));
```

### 3. Show all table status in db01:
```sql

SHOW  TABLE STATUS IN db01;
```

### 4. Check the description of table:
```sql
DESC db01.employee;

```

### 5. Change table status and add new column
```sql
-- create new table test
CREATE TABLE IF NOT EXISTS test(
	a		INT			NOT NULL,
        b 		DECIMAL(3)			,
	C		VARCHAR(10)			
);

```

```sql
/*add column*/
-- add column with VARCHAR(20)
ALTER TABLE db01.test ADD e VARCHAR(20);

-- add column with VARCHAR(20) in the first position
ALTER TABLE db01.test ADD f VARCHAR(20) FIRST;

-- add column with VARCHAR after column a
ALTER TABLE db01.test ADD g VARCHAR(20) AFTER a;
```

```sql
/*	modify column	*/
-- modify column a status to VARCHAR(10)
ALTER TABLE db01.test MODIFY a VARCHAR(10);

-- modify column b status and change to first position
ALTER TABLE db01.test MODIFY b VARCHAR(30) FIRST;

-- modify column c status and change the position after column alter
ALTER TABLE db01.test MODIFY c VARCHAR(40) AFTER a;

/*	change column name  */
-- change column name and the status of column
ALTER TABLE db01.test CHANGE a a_change INT;
```


```sql 
-- get Seniority by year and month
SELECT empno, ename, hiredate,
	ROUND(DATEDIFF(CURDATE(), hiredate)/365) AS 'round_len_year',
	DATEDIFF(NOW(), hiredate) div 365 AS 'len_year',
    DATEDIFF(CURDATE(), hiredate) % 365 DIV 30  AS 'len_month'
    FROM employee;
```