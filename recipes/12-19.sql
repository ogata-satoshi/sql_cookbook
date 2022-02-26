SELECT
  emp1.hiredate,
  emp1.sal,
  (
    SELECT
      sum(emp2.sal)
    FROM
      sql_cookbook.emp AS emp2
    WHERE
      emp2.hiredate BETWEEN date_add(emp1.hiredate, INTERVAL -90 DAY)
      AND emp1.hiredate
  )
FROM
  sql_cookbook.emp AS emp1
ORDER BY
  emp1.hiredate
