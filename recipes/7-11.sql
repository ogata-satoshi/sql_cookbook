SELECT
  100 * sum(
    CASE
      deptno
      WHEN 10 THEN sal
      ELSE 0
    END
  ) / sum(sal) AS pct
FROM
  sql_cookbook.emp
