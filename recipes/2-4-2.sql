SELECT
  data
FROM
  V
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
