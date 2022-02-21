SELECT
  dept.deptno,
  dname,
  ename
FROM
  sql_cookbook.emp FULL
  OUTER JOIN sql_cookbook.dept ON emp.deptno = dept.deptno
