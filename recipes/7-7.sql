SELECT
  ename,
  sal,
  round(
    exp(
      sum(ln(sal)) over (
        ORDER BY
          sal,
          ename
      )
    )
  )
FROM
  sql_cookbook.emp
WHERE
  deptno = 10
