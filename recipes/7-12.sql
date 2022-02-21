SELECT
  avg(COALESCE(comm, 0))
FROM
  sql_cookbook.emp
WHERE
  deptno = 30
