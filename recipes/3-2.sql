SELECT
  ename,
  loc
FROM
  emp
  INNER JOIN dept ON emp.deptno = dept.deptno
WHERE
  loc = 'NEW YORK'
