SELECT
  avg(COALESCE(comm, 0))
FROM
  emp
WHERE
  deptno = 30
