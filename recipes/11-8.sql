SELECT
  ename,
  sal,
  coalesce(
    lead(sal) over (
      ORDER BY
        sal
    ),
    min(sal) over ()
  ) AS forward,
  coalesce(
    lag(sal) over (
      ORDER BY
        sal
    ),
    max(sal) over()
  ) AS rewind,
FROM
  sql_cookbook.emp
ORDER BY
  sal
