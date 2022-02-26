SELECT
  deptno,
  repeat("*", count(empno)) AS cnt
FROM
  sql_cookbook.emp
GROUP BY
  deptno
ORDER BY
  deptno
