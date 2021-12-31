SELECT * FROM booklist WHERE subject LIKE '%너%';
SELECT * FROM booklist WHERE subject LIKE '%시%';

SELECT * FROM booklist;

SELECT * FROM TABS;
SELECT * FROM memberlist;
SELECT * FROM memberlist WHERE name LIKE '%김%';


SELECT * FROM emp;


SELECT ename, job, sal FROM emp WHERE deptno = 30;

SELECT ename, job, sal FROM EMP WHERE sal > (SELECT MAX(sal) FROM EMP WHERE deptno=30);


SELECT * FROM emp;
SELECT * FROM dept;


CREATE OR REPLACE VIEW jointable AS
SELECT e.empno, e.ename, e.hiredate, d.deptno, d.dname  
FROM emp e, dept d WHERE e.deptno = d.deptno;

SELECT * FROM jointable;

SELECT booknum, COUNT(*) FROM rentlist GROUP BY booknum ORDER BY booknum;
SELECT membernum, COUNT(*) FROM rentlist GROUP BY membernum ORDER BY membernum;

SELECT * FROM rentlist;

SELECT TO_CHAR(rentdate, 'YYYY-MM-DD') AS rd FROM rentlist;


SELECT DATE_FORMAT(rentdate, '%Y%m%d') AS rd FROM scott.rentlist;

--ALTER TABLE `scott`.`rentlist`
--
--WHERE num=100;

--update scott.rentlist set rentdate=str_to_date( concat('', 2021-12-31 , '') , '%Y-%m-%d' ) where num = 11;
SELECT * FROM scott.rentlist;

SELECT * FROM booklist;

SELECT rentdate FROM rentlist;
SELECT rentdate FROM scott.rentlist;
SELECT * FROM scott.rentlist;

DELETE FROM scott.rentlist WHERE num=11;

UPDATE rentlist SET rentdate=TO_DATE('2021-12-31', 'yyyy-MM-dd') WHERE num = 14;
update scott.rentlist set rentdate=str_to_date( '2021-12-31' , '%Y-%m-%d' ) where num = 12;


SELECT * FROM employees;
SELECT * FROM dept;
SELECT * FROM emp;

SELECT dname, loc FROM DEPT
WHERE deptno=(SELECT deptno FROM EMP WHERE ename='SCOTT');

SELECT ename, job, sal FROM emp WHERE sal> any(SELECT sal FROM emp WHERE deptno=50);
SELECT ename, job, sal FROM emp WHERE sal> any(SELECT sal FROM emp WHERE deptno=20);

