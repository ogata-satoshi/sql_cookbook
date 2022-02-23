WITH recursive calendar AS (
  SELECT
    date_trunc(current_date(), MONTH) AS current_month_date
  UNION
  ALL
  SELECT
    date_add(current_month_date, INTERVAL 1 DAY)
  FROM
    calendar
  WHERE
    extract(
      MONTH
      FROM
        current_month_date
    ) = extract(
      MONTH
      FROM
        date_add(current_month_date, INTERVAL 1 DAY)
    )
)
SELECT
  min(current_month_date) AS first_date,
  max(current_month_date) AS last_date
FROM
  calendar
WHERE
  extract(
    dayofweek
    FROM
      current_month_date
  ) = 2;
