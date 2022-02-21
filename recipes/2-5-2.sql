SELECT
  ename,
  sal,
  comm
FROM
  (
    SELECT
      ename,
      sal,
      comm,
      CASE
        WHEN comm IS NULL THEN 0
        ELSE 1
      END AS is_null
    FROM
      sql_cookbook.emp
  ) AS t1
ORDER BY
  is_null,
  comm DESC
