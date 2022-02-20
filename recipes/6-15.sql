SELECT
  split_part(t1.ip, '.', 1) AS A,
  split_part(t1.ip, '.', 2) AS B,
  split_part(t1.ip, '.', 3) AS C,
  split_part(t1.ip, '.', 4) AS D,
FROM
  (
    SELECT
      '111.22.3.4' AS ip
  ) AS t1
