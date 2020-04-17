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
