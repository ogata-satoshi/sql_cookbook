SELECT
  sal
FROM
  (
    SELECT
      sal,
      DENSE_RANK() OVER (
        ORDER BY
          cnt DESC
      ) AS rnk
    FROM
      (
        SELECT
          sal,
          count(sal) AS cnt
        FROM
          sql_cookbook.emp
        WHERE
          deptno = 20
        GROUP BY
          sal
      ) AS x
  ) AS y
WHERE
  rnk = 1
