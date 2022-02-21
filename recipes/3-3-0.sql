DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  ename,
  job,
  sal
FROM
  sql_cookbook.emp
WHERE
  job = 'CLERK'
