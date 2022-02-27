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
        sql_cookbook.emp
    ),
    (
      SELECT
        min(sal)
      FROM
        sql_cookbook.emp
    )
  )
