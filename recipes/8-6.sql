WITH year AS (
  SELECT
    extract (
      year
      FROM
        current_date()
    ) AS current_year
)
SELECT
  extract(
    DAYOFWEEK
    FROM
      current_year_date
  ) AS DAY,
  count(1) AS cnt
FROM
  (
    SELECT
      date_add(DATE(current_year, 1, 1), INTERVAL id -1 DAY) AS current_year_date
    FROM
      year,
      sql_cookbook.t500
    WHERE
      id <= DATE_DIFF(
        DATE(current_year + 1, 1, 1),
        DATE(current_year, 1, 1),
        DAY
      )
  ) AS t1
GROUP BY
  extract(
    DAYOFWEEK
    FROM
      current_year_date
  )
