SELECT
  split(t1.ip, '.') [offset(0)] AS A,
  split(t1.ip, '.') [offset(1)] AS B,
  split(t1.ip, '.') [offset(2)] AS C,
  split(t1.ip, '.') [offset(3)] AS D,
FROM
  (
    SELECT
      '111.22.3.4' AS ip
  ) AS t1
