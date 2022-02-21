SELECT
  empno,
  emp.ename,
  emp.job,
  emp.sal,
  deptno
FROM
  sql_cookbook.emp
  INNER JOIN sql_cookbook.V ON (
    emp.ename = V.ename
    AND emp.job = V.job
    AND emp.SAL = V.sal
  )
