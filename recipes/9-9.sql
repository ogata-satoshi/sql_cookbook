WITH year_quarter AS (
  SELECT
    20221 AS yrq
  UNION
  ALL
  SELECT
    20222 AS yrq
  UNION
  ALL
  SELECT
    20223 AS yrq
  UNION
  ALL
  SELECT
    20224 AS yrq
)
SELECT
  date(DIV(yrq, 10), mod(yrq, 10) * 3 -2, 1) AS Q_START,
  date_add(
    date_add(
      date(DIV(yrq, 10), mod(yrq, 10) * 3, 1),
      INTERVAL 1 MONTH
    ),
    INTERVAL -1 DAY
  ) AS Q_END
FROM
  year_quarter
