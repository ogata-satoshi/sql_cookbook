SELECT
  ename,
  sal
FROM
  (
    SELECT
      ename,
      sal,
      max(sal) over () AS max_sal,
      min(sal) over () min_sal
    FROM
      sql_cookbook.emp
  )
WHERE
  sal = max_sal
  OR sal = min_sal
