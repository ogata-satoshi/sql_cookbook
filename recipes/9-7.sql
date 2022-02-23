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
),
detail_day AS (
  SELECT
    extract(
      dayofweek
      FROM
        current_month_date
    ) AS weekday,
    extract(
      ISOWEEK
      FROM
        current_month_date
    ) AS weeknum,
    extract(
      DAY
      FROM
        current_month_date
    ) AS date,
    current_month_date
  FROM
    calendar
)
SELECT
  max(
    CASE
      weekday
      WHEN 2 THEN date
    END
  ) AS MO,
  max(
    CASE
      weekday
      WHEN 3 THEN date
    END
  ) AS TU,
  max(
    CASE
      weekday
      WHEN 4 THEN date
    END
  ) AS WE,
  max(
    CASE
      weekday
      WHEN 5 THEN date
    END
  ) AS TH,
  max(
    CASE
      weekday
      WHEN 6 THEN date
    END
  ) AS FR,
  max(
    CASE
      weekday
      WHEN 7 THEN date
    END
  ) AS SA,
  max(
    CASE
      weekday
      WHEN 1 THEN date
    END
  ) AS SU,
FROM
  detail_day
GROUP BY
  weeknum
ORDER BY
  weeknum
