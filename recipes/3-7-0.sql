DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  *
FROM
  sql_cookbook.emp
WHERE
  deptno != 10
UNION
ALL
SELECT
  *
FROM
  sql_cookbook.emp
WHERE
  ename = 'WARD'
