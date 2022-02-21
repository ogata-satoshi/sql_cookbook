DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  ename || ' ' || deptno AS data
FROM
  sql_cookbook.emp;
