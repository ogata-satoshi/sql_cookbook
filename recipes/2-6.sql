SELECT
  ename,
  sal,
  job,
  comm
FROM
  sql_cookbook.emp
ORDER BY
  CASE
    WHEN job = 'SALESMAN' THEN comm
    ELSE sal
  END
