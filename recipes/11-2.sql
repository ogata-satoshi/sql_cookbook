SELECT
  ename
FROM
  (
    SELECT
      ename,
      row_number() over (
        ORDER BY
          ename
      ) AS rn
    FROM
      sql_cookbook.emp
  )
WHERE
  mod(rn, 2) = 1
