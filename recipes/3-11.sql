SELECT
  dept.deptno,
  dname,
  ename
FROM
  emp FULL
  OUTER JOIN dept ON emp.deptno = dept.deptno
