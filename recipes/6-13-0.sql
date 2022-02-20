DROP VIEW IF EXISTS V;

CREATE VIEW V AS
SELECT
  REPLACE (mixed, ' ', '') AS mixed
FROM
  (
    SELECT
      substr(ename, 1, 2) || cast(deptno AS varchar) || substr(ename, 3, 2) AS mixed
    FROM
      emp
    WHERE
      deptno = 10
    UNION
    ALL
    SELECT
      cast(empno AS VARCHAR) AS mixed
    FROM
      emp
    WHERE
      deptno = 20
    UNION
    ALL
    SELECT
      ename AS mixed
    FROM
      emp
    WHERE
      deptno = 30
  ) x;
