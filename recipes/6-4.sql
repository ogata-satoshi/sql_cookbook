SELECT
  ename,
  translate(ename, 'AIEUO', '') AS STRIPPED1,
  sal,
  REPLACE(CAST(sal AS STRING), '0', '') AS STRIPPED2
FROM
  sql_cookbook.emp
