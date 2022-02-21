SELECT
  avg(sal)
FROM
  sql_cookbook.emp
WHERE
  sal NOT IN(
    (
      SELECT
        max(sal)
      FROM
        emp
    ),
    (
      SELECT
        min(sal)
      FROM
        emp
    )
  )
