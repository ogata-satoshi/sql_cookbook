SELECT
  empno,
  emp.ename,
  emp.job,
  emp.sal,
  deptno
FROM
  emp
  INNER JOIN V ON (
    emp.ename = V.ename
    AND emp.job = V.job
    AND emp.SAL = V.sal
  )
