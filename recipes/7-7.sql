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
  emp
WHERE
  deptno = 10
