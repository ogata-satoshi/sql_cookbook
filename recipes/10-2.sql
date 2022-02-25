SELECT
  deptno,
  ename,
  sal,
  hiredate,
  coalesce(
    CAST (
      sal - lead(sal) over (
        PARTITION by deptno
        ORDER BY
          hiredate
      ) AS STRING
    ),
    'N/A'
  ) AS diff
FROM
  sql_cookbook.emp
ORDER BY
  deptno
