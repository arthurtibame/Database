/* Date operation */

-- now + 5days
SELECT SYSDATE() + INTERVAL 5 DAY;

-- The difference between 'SYSDATE' & 'NOW':
SELECT SYSDATE(), 
	SLEEP(1),
    SYSDATE();
-- After sleep 1 sec will get the same datetime:
SELECT NOW(),
	SLEEP(1),
    NOW();

-- get current date(CURDATE()) and current time(CURTIME())
SELECT ADDDATE(CURDATE(), 2);
SELECT ADDDATE(CURDATE(), INTERVAL 5 DAY);

-- get Seniority by year and month
SELECT empno, ename, hiredate,
	ROUND(DATEDIFF(CURDATE(), hiredate)/365) AS 'round_len_year',
	DATEDIFF(NOW(), hiredate) div 365 AS 'len_year',
    DATEDIFF(CURDATE(), hiredate) % 365 DIV 30  AS 'len_month'
    FROM employee;
    



