SELECT
  ename,
  loc
FROM
  sql_cookbook.emp
  INNER JOIN sql_cookbook.dept ON emp.deptno = dept.deptno
WHERE
  loc = 'NEW YORK'
