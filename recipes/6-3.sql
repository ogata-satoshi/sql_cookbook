SELECT
  (length(t1.s) - length(REPLACE(t1.s, ',', ''))) / length(',') AS cnt
FROM
  (
    SELECT
      '10,CLARK,MANAGER' AS s
  ) AS t1
