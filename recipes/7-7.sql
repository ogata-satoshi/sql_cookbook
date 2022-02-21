SELECT
  ename,
  sal,
  exp(
    sum(ln(sal)) over (
      ORDER BY
        sal,
        ename
    )
  )
FROM
  sql_cookbook.emp
WHERE
  deptno = 10
