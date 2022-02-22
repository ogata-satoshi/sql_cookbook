SELECT
  ename,
  DATE_DIFF(hiredate, hiredate2, DAY) as diff
FROM
  (
    SELECT
      ename,
      deptno,
      hiredate,
      lag(hiredate) over (
        ORDER BY
          hiredate
      ) AS hiredate2
    FROM
      sql_cookbook.emp
    ORDER BY
      hiredate
  )
WHERE
  deptno = 10
