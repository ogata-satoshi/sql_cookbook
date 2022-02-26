SELECT
  *
FROM
  (
    SELECT
      deptno,
      empno
    FROM
      sql_cookbook.emp
  ) AS driver pivot (
    count(driver.empno) FOR driver.deptno IN (
      10 AS dept_10,
      20 AS dept_20,
      30 AS dept_30,
      40 AS dept_40
    )
  ) AS empPivot
