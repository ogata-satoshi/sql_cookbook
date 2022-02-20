SELECT
  REPLACE(
    translate(data, '0123456789', '###########'),
    '#',
    ''
  ),
  REPLACE(
    data,
    REPLACE(
      translate(data, '0123456789', '###########'),
      '#',
      ''
    ),
    ''
  )
FROM
  (
    SELECT
      ename || cast(sal AS VARChaR) AS data
    FROM
      emp
  ) AS t1
