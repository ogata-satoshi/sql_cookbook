SELECT
  grp,
  min(trx_date) AS trx_start,
  max(trx_date) AS trx_end,
  sum(trx_cnt) AS total
FROM
  (
    SELECT
      DIV(trx_id -1, 5) + 1 AS grp,
      *
    FROM
      sql_cookbook.trx_log
  )
GROUP BY
  grp
ORDER BY
  grp
