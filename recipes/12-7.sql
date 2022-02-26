SELECT
  DIV(rn -1, 5) + 1 AS grp,
  empno,
  ename
FROM
  (
    SELECT
      row_number() over (
        ORDER BY
          empno
      ) AS rn,
      empno,
      ename
    FROM
      sql_cookbook.emp
  )
