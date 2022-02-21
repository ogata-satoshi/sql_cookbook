SELECT
  deptno,
  string_agg(
    ename,
    ','
    ORDER BY
      empno
  ) AS emps
FROM
  sql_cookbook.emp
GROUP BY
  deptno
