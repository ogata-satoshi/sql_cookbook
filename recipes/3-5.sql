SELECT
  dept.deptno,
  dname,
  loc
FROM
  dept
  LEFT OUTER JOIN emp ON dept.deptno = emp.deptno
WHERE
  emp.deptno IS NULL
