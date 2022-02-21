SELECT
  ename,
  loc,
  received
FROM
  sql_cookbook.emp
  INNER JOIN sql_cookbook.dept ON emp.deptno = dept.deptno
  LEFT OUTER JOIN sql_cookbook.emp_bonus ON emp.empno = emp_bonus.empno
ORDER BY
  loc
