USE db01;

CREATE TABLE emp (
	empno		decimal(4)		PRIMARY KEY,
	ename		varchar(30)		NOT NULL,
	hiredate	date			NOT NULL,
	salary		int				NOT NULL,
	deptno		decimal(3)		NOT NULL,
	title		varchar(20)		NOT NULL,
	mgrno		decimal(4)
);

INSERT INTO emp
   VALUES (1001, '潘麗珍', '2010/11/10', 56000, 100, 'senior engineer', 1003);

INSERT INTO emp
   VALUES (1002, '林麗如', '2008/03/22', 34000, 100, 'engineer', 1003);
   
INSERT INTO emp
   VALUES (1003, '林建生', '2011/08/14', 77000, 200, 'manager', NULL);
   
INSERT INTO emp
   VALUES (1004, '吳美芳', '2005/04/04', 67000, 300, 'manager', NULL);
   
INSERT INTO emp
   VALUES (1005, '王小麗', '2012/12/12', 37000, 200, 'engineer', 1003);
   
INSERT INTO emp
   VALUES (1006, '胡志強', '2007/07/06', 44000, 300, 'senior engineer', 1004);

INSERT INTO emp
   VALUES (1007, '何偉生', '2003/09/11', 39000, 100, 'engineer', 1004);

INSERT INTO emp
   VALUES (1008, '林人生', '1999/05/16', 55000, 400, 'SA_REP', 1004);      
         
-------------------------------------------------------------------------------
CREATE TABLE dept (
	deptno		decimal(3)		PRIMARY KEY,
	dname		varchar(30)		NOT NULL,
	cityno		char(3)			NOT NULL DEFAULT '101' 
);

INSERT INTO dept
   VALUES (100, 'IT', '101');

INSERT INTO dept
   VALUES (200, 'Accounting', '101');
   
INSERT INTO dept
   VALUES (300, 'Marketing', '102');
   
INSERT INTO dept
   VALUES (500, 'Reserch', '102');
   
--------------------------------------------------------------------------------
CREATE TABLE city (
	cityno		char(3)			PRIMARY KEY,
    cname		varchar(30)		NOT NULL
);

INSERT INTO city
   VALUES ('101', 'Taipei');

INSERT INTO city
   VALUES ('102', 'Taoyuan');

--------------------------------------------------------------------------------
CREATE TABLE grade (
	level		char(1)		PRIMARY KEY,
	lowest		int			NOT NULL,
	highest		int			NOT NULL
);

INSERT INTO grade
   VALUES ('A', 10000, 29999);

INSERT INTO grade
   VALUES ('B', 30000, 49999);
   
INSERT INTO grade
   VALUES ('C', 50000, 69999);
   
INSERT INTO grade
   VALUES ('D', 70000, 89999);
   
INSERT INTO grade
   VALUES ('E', 90000, 109999);
