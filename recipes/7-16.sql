WITH median (median) AS (
  SELECT
    PERCENTILE_CONT(0.5) WITHIN GROUP (
      ORDER BY
        sal
    )
  FROM
    sql_cookbook.emp
),
sub (sub) AS (
  SELECT
    abs(
      sal - (
        SELECT
          median
        FROM
          median
      )
    )
  FROM
    sql_cookbook.emp
),
MedAbsDeviation (MAD) AS (
  SELECT
    PERCENTILE_CONT(0.5) WITHIN GROUP (
      ORDER BY
        sub
    )
  FROM
    sub
)
SELECT
  1.0 * abs(sal - MAD) / MAD,
  sal,
  ename,
  job
FROM
  sql_cookbook.emp,
  MedAbsDeviation
