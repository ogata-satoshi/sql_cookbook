CREATE VIEW V AS
SELECT
  ename || ' ' || deptno AS data
FROM
  emp;
