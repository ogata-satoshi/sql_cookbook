SELECT
  translate(data, '0123456789', ''),
  REPLACE(
    data,
    translate(data, '0123456789', ''),
    ''
  ),
FROM
  (
    SELECT
      ename || cast(sal AS STRING) AS data
    FROM
      sql_cookbook.emp
  ) AS t1
