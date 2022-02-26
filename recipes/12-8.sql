SELECT
  ntile(4) over (
    ORDER BY
      empno
  ) grp,
  empno,
  ename
FROM
  sql_cookbook.emp
ORDER BY
  empno
