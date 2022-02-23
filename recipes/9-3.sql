SELECT
  extract(
    YEAR
    FROM
      CURRENT_TIMESTAMP()
  ) AS yr,
  extract(
    MONTH
    FROM
      CURRENT_TIMESTAMP()
  ) AS mth,
  extract(
    DAY
    FROM
      CURRENT_TIMESTAMP()
  ) AS dy,
  extract(
    HOUR
    FROM
      CURRENT_TIMESTAMP()
  ) AS hr,
  extract(
    MINUTE
    FROM
      CURRENT_TIMESTAMP()
  ) AS mnt,
  extract(
    SECOND
    FROM
      CURRENT_TIMESTAMP()
  ) AS scd,
