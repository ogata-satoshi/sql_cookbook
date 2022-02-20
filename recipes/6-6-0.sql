DROP VIEW IF EXISTS V;

CREATE VIEW V AS
SELECT
  ename AS data
FROM
  emp
WHERE
  deptno = 10
UNION
ALL
SELECT
  ename || ', $' || cast(sal AS VARCHAR) || '.00' AS data
FROM
  emp
WHERE
  deptno = 20
UNION
ALL
SELECT
  ename || cast(deptno AS varchar) AS data
FROM
  emp
WHERE
  deptno = 30
