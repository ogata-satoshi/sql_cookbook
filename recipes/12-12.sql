SELECT
  job,
  sum(sal) AS sal
FROM
  sql_cookbook.emp
GROUP BY
  rollup(job)
