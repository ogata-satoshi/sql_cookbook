SELECT
  data
FROM
  sql_cookbook.V
ORDER BY
  REPLACE(
    TRANSLATE(data, '1234567890', '##########'),
    '#',
    ''
  );
