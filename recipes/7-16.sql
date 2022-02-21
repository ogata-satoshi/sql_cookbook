WITH median (median) AS (
  SELECT
    PERCENTILE_CONT(0.5) WITHIN GROUP (
      ORDER BY
        sal
    )
  FROM
    emp
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
    emp
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
  emp,
  MedAbsDeviation
