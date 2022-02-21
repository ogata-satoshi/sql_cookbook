SELECT
  dept.deptno,
  dname,
  loc
FROM
  sql_cookbook.dept
  LEFT OUTER JOIN sql_cookbook.emp ON dept.deptno = emp.deptno
WHERE
  emp.deptno IS NULL
