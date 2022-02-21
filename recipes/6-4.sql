SELECT
  ename,
  REPLACE(translate(ename, 'AIEUO', '#####'), '#', '') AS STRIPPED1,
  sal,
  REPLACE(CAST(sal AS VARCHAR), '0', '') AS STRIPPED2
FROM
  sql_cookbook.emp
