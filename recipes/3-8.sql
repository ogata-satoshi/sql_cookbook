SELECT
  ename,
  loc
FROM
  emp,
  dept
WHERE
  emp.deptno = 10
  AND emp.deptno = dept.deptno;

/* 別解 
SELECT
  ename,
  loc
FROM
  emp
  INNER JOIN dept ON emp.deptno = dept.deptno
WHERE
  emp.deptno = 10
*/
