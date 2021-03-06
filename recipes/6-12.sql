SELECT
  t1.ename,
  string_agg(
    t1.c,
    ''
    ORDER BY
      t1.c
  )
FROM
  (
    SELECT
      a.ename,
      SUBSTRING(a.ename, iter.id, 1) AS c
    FROM
      sql_cookbook.emp AS a,
      sql_cookbook.t10 AS iter
    WHERE
      iter.id <= length(a.ename)
  ) AS t1
GROUP BY
  t1.ename
