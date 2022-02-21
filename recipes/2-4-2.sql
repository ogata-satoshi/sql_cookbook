SELECT
  data
FROM
  sql_cookbook.V
ORDER BY
  REPLACE(
    data,
    REPLACE(
      translate(data, '1234567890', '##########'),
      '#',
      ''
    ),
    ''
  );
