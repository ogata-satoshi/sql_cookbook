SELECT
  sum(
    CASE
      WHEN deptno = 20 THEN sal
      WHEN deptno = 10 THEN - sal
      ELSE 0
    END
  ) AS d20_10_diff,
  sum(
    CASE
      WHEN deptno = 20 THEN sal
      WHEN deptno = 30 THEN - sal
      ELSE 0
    END
  ) AS d20_30_diff,
FROM
  (
    SELECT
      deptno,
      sum(sal) AS sal
    FROM
      sql_cookbook.emp
    GROUP BY
      deptno
  )
