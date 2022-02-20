DROP VIEW IF EXISTS V;

CREATE VIEW V AS
SELECT
  e.ename || ' ' || cast(e.empno AS varchar) || ' ' || d.dname AS data
FROM
  emp e,
  dept d
WHERE
  e.deptno = d.deptno
