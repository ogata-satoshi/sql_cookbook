SELECT
  emp.ename,
  dept.deptno,
  dept.dname,
  dept.loc
FROM
  sql_cookbook.dept
  LEFT OUTER JOIN sql_cookbook.emp ON dept.deptno = emp.deptno
  AND (emp.deptno IN (10, 20))
ORDER BY
  dept.deptno
