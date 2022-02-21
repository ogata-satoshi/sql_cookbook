SELECT
  ename,
  loc
FROM
  sql_cookbook.emp,
  sql_cookbook.dept
WHERE
  emp.deptno = 10
  AND emp.deptno = dept.deptno;

/* 別解
 SELECT
 ename,
 loc
 from
 sql_cookbook.emp
 INNER JOIN dept ON emp.deptno = dept.deptno
 WHERE
 emp.deptno = 10
 */
