SELECT
  data
FROM
  sql_cookbook.V
WHERE
  translate(
    lower(data),
    '0123456789abcdefghijklmnopqrstuvwxyz',
    ''
  ) = ''
