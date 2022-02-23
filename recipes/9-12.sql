SELECT
  concat(
    emp1.ename,
    ' was hired on the same month and weekday as ',
    emp2.ename
  ) AS msg
FROM
  sql_cookbook.emp AS emp1,
  sql_cookbook.emp AS emp2
WHERE
  extract(
    MONTH
    FROM
      emp1.hiredate
  ) = extract(
    MONTH
    FROM
      emp2.hiredate
  )
  AND extract(
    dayofweek
    FROM
      emp1.hiredate
  ) = extract(
    dayofweek
    FROM
      emp2.hiredate
  )
  AND emp1.empno < emp2.empno
