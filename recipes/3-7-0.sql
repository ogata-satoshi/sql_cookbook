DROP VIEW IF EXISTS V;

CREATE VIEW V AS
SELECT
  *
FROM
  emp
WHERE
  deptno != 10
UNION
ALL
SELECT
  *
FROM
  emp
WHERE
  ename = 'WARD'