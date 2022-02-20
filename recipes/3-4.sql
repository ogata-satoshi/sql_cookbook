SELECT
  DISTINCT deptno
FROM
  dept
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      emp
    WHERE
      dept.deptno = emp.deptno
  )
