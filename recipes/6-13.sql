SELECT
  TRANSLATE(
    lower(mixed),
    'abcdefghijklmnopqrstuvwxyz ',
    ''
  )
FROM
  sql_cookbook.V
WHERE
  TRANSLATE(
    lower(mixed),
    'abcdefghijklmnopqrstuvwxyz ',
    ''
  ) <> ''
