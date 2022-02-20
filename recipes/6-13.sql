SELECT
  TRANSLATE(
    lower(mixed),
    'abcdefghijklmnopqrstuvwxyz ',
    ''
  )
FROM
  V
WHERE
  TRANSLATE(
    lower(mixed),
    'abcdefghijklmnopqrstuvwxyz ',
    ''
  ) <> ''
