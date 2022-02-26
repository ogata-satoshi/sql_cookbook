SELECT
  sum(
    CASE
      WHEN deptno = 10 THEN 1
      ELSE 0
    END
  ) AS deptno_10,
  sum(
    CASE
      WHEN deptno = 20 THEN 1
      ELSE 0
    END
  ) AS deptno_20,
  sum(
    CASE
      WHEN deptno = 30 THEN 1
      ELSE 0
    END
  ) AS deptno_30,
FROM
  sql_cookbook.emp
