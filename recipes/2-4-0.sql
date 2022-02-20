DROP VIEW IF EXISTS V;

CREATE VIEW V AS
SELECT
  ename || ' ' || deptno AS data
FROM
  emp;
