SELECT
  data
FROM
  V
ORDER BY
  REPLACE(
    TRANSLATE(data, '1234567890', '##########'),
    '#',
    ''
  );
