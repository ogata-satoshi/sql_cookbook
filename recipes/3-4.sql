SELECT
  DISTINCT deptno
FROM
  sql_cookbook.dept
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      sql_cookbook.emp
    WHERE
      dept.deptno = sql_cookbook.emp.deptno
  )
