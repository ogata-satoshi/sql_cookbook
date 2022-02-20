DROP VIEW IF EXISTS V;

CREATE VIEW V AS
SELECT
  ename,
  job,
  sal
FROM
  emp
WHERE
  job = 'CLERK'
