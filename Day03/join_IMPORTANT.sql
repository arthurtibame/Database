USE db01;
/* cross join  */
# method 1 
SELECT emp.ename, dept.dname FROM emp, dept;

# method 2
SELECT emp.ename, dept.dname FROM emp CROSS JOIN dept;

/* cross join */

# method 1
SELECT emp.ename, dept.dname FROM emp, dept
	WHERE emp.deptno = dept.deptno;
 # method 2   
SELECT emp.ename, emp.deptno, dept.dname 
	FROM emp join dept
	ON emp.deptno = dept.deptno
    AND title='manager';

# method 3 
SELECT emp.ename, emp.deptno, dept.dname 
	FROM emp join dept
	ON emp.deptno = dept.deptno
    WHERE title='manager';
    
# join nultiple tables  (must give alias or will get error)
SELECT e.ename, d.dname, c.cname
	FROM emp e, dept d, city c 
    WHERE e.deptno = d.deptno
    AND d.cityno = c.cityno;

# method 2 ANSI JOIN
SELECT e.ename, d.dname, c.cname
	FROM emp e JOIN dept d
    ON e.deptno = d.deptno
    JOIN city c 
    ON d.cityno = c.cityno;
    
SELECT e.ename, e.salary , d.dname, g.level
	FROM emp e, dept d, grade g
    WHERE e.deptno = d.deptno
    AND e.salary BETWEEN g.lowest AND g.highest;
    
SELECT e.ename, e.salary , d.dname, g.level
	FROM emp e JOIN dept d 
		ON e.deptno = d.deptno
    JOIN grade g ON e.salary 
		between g.lowest AND g.highest;

/*					OUTER JOIN					*/
# left outer join 
SELECT e.ename, e.deptno, d.dname
FROM emp e LEFT JOIN dept d
ON e.deptno = d.deptno;

# RIGHT outer join 
SELECT e.ename, d.deptno, d.dname
FROM emp e RIGHT JOIN dept d
ON e.deptno = d.deptno;

#LEFT and RIGHT join with UNION
SELECT e.ename, e.deptno, d.dname
FROM emp e LEFT JOIN dept d
ON e.deptno = d.deptno
UNION
SELECT e.ename, d.deptno, d.dname
FROM emp e RIGHT JOIN dept d
ON e.deptno = d.deptno;

# SELF JOIN

SELECT worker.ename 'worker name',
	   manager.ename 'manager name'
FROM emp worker, emp manager
WHERE worker.mgrno = manager.empno;

