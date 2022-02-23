WITH recursive calendar AS (
  SELECT
    date_add(
      current_date(),
      INTERVAL - extract(
        dayofyear
        FROM
          current_date()
      ) + 1 DAY
    ) AS dy
  UNION
  ALL
  SELECT
    date_add(dy, INTERVAL 1 DAY) AS dy
  FROM
    calendar
  WHERE
    extract(
      year
      FROM
        dy
    ) = extract(
      year
      FROM
        date_add(dy, INTERVAL 1 DAY)
    )
)
SELECT
  *
FROM
  calendar
WHERE
  EXTRACT(
    dayofweek
    FROM
      dy
  ) = 6
