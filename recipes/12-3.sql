SELECT
  deptno,
  CASE
    WHEN deptno = 10 THEN deptno_10
    WHEN deptno = 20 THEN deptno_20
    WHEN deptno = 30 THEN deptno_30
  END AS counts_by_dept
FROM
  sql_cookbook.emp_cnts
  CROSS JOIN (
    SELECT
      deptno
    FROM
      sql_cookbook.dept
    WHERE
      deptno <= 30
  )
