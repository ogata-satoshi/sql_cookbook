DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  ename AS data
FROM
  sql_cookbook.emp
WHERE
  deptno = 10
UNION
ALL
SELECT
  ename || ', $' || cast(sal AS STRING) || '.00' AS data
FROM
  sql_cookbook.emp
WHERE
  deptno = 20
UNION
ALL
SELECT
  ename || cast(deptno AS STRING) AS data
FROM
  sql_cookbook.emp
WHERE
  deptno = 30
