SELECT
  ename
FROM
  sql_cookbook.emp
WHERE
  extract(
    MONTH
    FROM
      hiredate
  ) IN (2, 12)
  OR extract(
    dayofweek
    FROM
      hiredate
  ) IN (3)
