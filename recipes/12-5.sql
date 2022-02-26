SELECT
  CASE
    WHEN rn = 1 THEN deptno
    ELSE NULL
  END AS deptno,
  ename
FROM
  (
    SELECT
      deptno,
      ename,
      row_number() over(
        PARTITION by deptno
        ORDER BY
          empno
      ) AS rn
    FROM
      sql_cookbook.emp
  )
