DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  e.ename || ' ' || cast(e.empno AS varchar) || ' ' || d.dname AS data
FROM
  sql_cookbook.emp e,
  sql_cookbook.dept d
WHERE
  e.deptno = d.deptno
