SELECT
  *
FROM
  sql_cookbook.V
ORDER BY
  CAST(
    TRANSLATE(lower(data), 'abcdefghijklmnopqrstuvwxyz ', '') AS int
  )
