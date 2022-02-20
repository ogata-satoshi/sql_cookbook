SELECT
  ename,
  loc,
  received
FROM
  emp
  INNER JOIN dept ON emp.deptno = dept.deptno
  LEFT OUTER JOIN emp_bonus ON emp.empno = emp_bonus.empno
ORDER BY
  loc
