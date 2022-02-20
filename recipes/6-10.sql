SELECT
  deptno,
  string_agg(
    ename,
    ','
    ORDER BY
      empno
  ) AS emps
FROM
  emp
GROUP BY
  deptno
