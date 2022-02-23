/*
 最終的な列名は Q_START, Q_END とする
 */
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
