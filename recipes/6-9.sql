SELECT
  *
FROM
  V
ORDER BY
  CAST(
    TRANSLATE(lower(data), 'abcdefghijklmnopqrstuvwxyz ', '') AS int
  )
