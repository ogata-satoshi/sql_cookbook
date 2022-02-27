SELECT
  cast(split(t1.chara, ',') [offset(id-1)] AS int) AS empno,
FROM
  (
    SELECT
      '7654,7698,7783,7788,' AS chara
  ) AS t1,
  (
    SELECT
      id
    FROM
      sql_cookbook.t10
  ) AS iter
WHERE
  id <= length(t1.chara) - length(REPLACE(t1.chara, ',', ''))
