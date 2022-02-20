SELECT
  data
FROM
  v
WHERE
  translate(
    lower(data),
    '0123456789abcdefghijklmnopqrstuvwxyz',
    ''
  ) = ''
