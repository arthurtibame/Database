-- select all data
SELECT * FROM employee;

-- select specific column
SELECT ename, salary, title FROM employee;

-- select specific columns as Alias(別名)
SELECT ename AS 'Employee Name', salary*12 AS 'Annual Salary'
	FROM employee;

-- ignore "AS" is also avaible !
SELECT ename  'Employee Name', salary*12 'Annual Salary'
	FROM employee;


/*	call string functions */
/* CAUTION !
	In this case, it's not a good solution to create Last name + first name in chinese
    because of the amount of last name (some will be 1 anthoer may be 2)
 */
-- get last name 
SELECT SUBSTRING(ename, 1, 1) AS 'last name' FROM employee;
-- alternatively
SELECT SUBSTRING(ename, -3, 1) AS 'last name' FROM employee;

-- get first name
SELECT SUBSTRING(ename, 2) AS 'first name' FROM employee;
-- alternatively
SELECT SUBSTRING(ename, -2 ) AS 'first name' FROM employee;

--  CONCAT two columns by 'concat'
SELECT CONCAT(ename, '	is a', title) AS 'employee' FROM employee;

-- check character length which occupied the amount of bytes:
SELECT LENGTH('I am a student') AS 'length';

-- check character length:
SELECT CHAR_LENGTH('This is a check length method') AS 'Character length';