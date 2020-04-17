/* the hotkey of excute single line:
	CTRL + ENTER
 */
-- create employee table
CREATE TABLE IF NOT EXISTs db01.employee(
	empno		DECIMAL(4)		PRIMARY KEY,
    ename		VARCHAR(30)		NOT NULL,
    hiredate	DATE			NOT NULL,
    salary		INT 			NOT NULL,
    deptno		DECIMAL(3)		NOT NULL,
    title		VARCHAR(20)		NOT NULL
);

-- create department table
CREATE TABLE IF NOT EXISTs `db01`.`department` (
  `deptno` DECIMAL(3) NOT NULL,
  `dname` VARCHAR(30) NOT NULL,
  `mgrno` DECIMAL(4) NULL,
  PRIMARY KEY (`deptno`));

-- show table status 
SHOW TABLE STATUS IN db01;

-- show all tables
SHOW TABLES;

-- check the description of table
DESC db01.employee;

-- change table status
CREATE TABLE IF NOT EXISTS test(
	a		INT			NOT NULL,
    b 		DECIMAL(3)			,
	C		VARCHAR(10)			
);

/*add column*/
-- add column with VARCHAR(20)
ALTER TABLE db01.test ADD e VARCHAR(20);

-- add column with VARCHAR(20) in the first position
ALTER TABLE db01.test ADD f VARCHAR(20) FIRST;

-- add column with VARCHAR after column a
ALTER TABLE db01.test ADD g VARCHAR(20) AFTER a;

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