SELECT
  max(
    CASE
      WHEN deptno = 10 THEN '*'
      ELSE NULL
    END
  ) AS d10,
  max(
    CASE
      WHEN deptno = 20 THEN '*'
      ELSE NULL
    END
  ) AS d20,
  max(
    CASE
      WHEN deptno = 30 THEN '*'
      ELSE NULL
    END
  ) AS d30,
FROM
  (
    SELECT
      row_number() over (PARTITION by deptno) AS rn,
      deptno
    FROM
      sql_cookbook.emp
  )
GROUP BY
  rn
ORDER BY
  rn DESC
