WITH sub_table AS (
  SELECT
    abs(sal - PERCENTILE_CONT(sal, 0.5) over()) AS sub
  FROM
    sql_cookbook.emp
),
MedAbsDeviation AS (
  SELECT
    DISTINCT PERCENTILE_CONT(sub, 0.5) over() AS MAD
  FROM
    sub_table
)
SELECT
  round(1.0 * abs(sal - MAD) / MAD, 1) AS deviation,
  sal,
  ename,
  job
FROM
  sql_cookbook.emp,
  MedAbsDeviation
