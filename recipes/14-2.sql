WITH pivot_table AS (
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
)
SELECT
  dname,
  cnt
FROM
  pivot_table AS new_driver unpivot (
    cnt FOR dname IN (dept_10, dept_20, dept_30, dept_40)
  ) AS un_pivot
