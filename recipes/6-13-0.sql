DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  REPLACE (mixed, ' ', '') AS mixed
FROM
  (
    SELECT
      substr(ename, 1, 2) || cast(deptno AS STRING) || substr(ename, 3, 2) AS mixed
    FROM
      sql_cookbook.emp
    WHERE
      deptno = 10
    UNION
    ALL
    SELECT
      cast(empno AS STRING) AS mixed
    FROM
      sql_cookbook.emp
    WHERE
      deptno = 20
    UNION
    ALL
    SELECT
      ename AS mixed
    FROM
      sql_cookbook.emp
    WHERE
      deptno = 30
  ) x;
