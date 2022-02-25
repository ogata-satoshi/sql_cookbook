SELECT
  ename,
  sal
FROM
  (
    SELECT
      ename,
      sal,
      lead(sal) over (
        ORDER BY
          hiredate
      ) AS next_hired_sal
    FROM
      sql_cookbook.emp
  )
WHERE
  sal < next_hired_sal
