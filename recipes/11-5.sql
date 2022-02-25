SELECT
  ename,
  sal
FROM
  (
    SELECT
      ename,
      sal,
      dense_rank() over (
        ORDER BY
          sal
      ) AS dr
    FROM
      sql_cookbook.emp
  )
WHERE
  dr <= 5
ORDER BY
  sal DESC
