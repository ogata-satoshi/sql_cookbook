SELECT
  substr(e.ename, iter.pos, 1) AS C
FROM
  (
    SELECT
      ename
    FROM
      emp
    WHERE
      ename = 'KING'
  ) AS e,
  (
    SELECT
      id AS pos
    FROM
      t10
  ) AS iter
WHERE
  iter.pos <= length(e.ename)
