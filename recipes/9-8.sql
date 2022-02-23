WITH recursive calendar AS (
  SELECT
    EXTRACT(
      QUARTER
      FROM
        date(year, 1, 1)
    ) QTR,
    DATE(year, 1, 1) AS Q_START,
    date_add(DATE(year, 4, 1), INTERVAL -1 DAY) AS Q_END
  FROM
    (
      SELECT
        extract(
          year
          FROM
            current_date()
        ) AS year
    )
  UNION
  ALL
  SELECT
    EXTRACT(
      QUARTER
      FROM
        date_add(Q_START, INTERVAL 3 MONTH)
    ) AS QTR,
    date_add(Q_START, INTERVAL 3 MONTH) AS Q_START,
    date_add(
      date_add(Q_START, INTERVAL 6 MONTH),
      INTERVAL -1 DAY
    ) AS Q_END
  FROM
    calendar
  WHERE
    EXTRACT(
      year
      FROM
        Q_START
    ) = EXTRACT(
      year
      FROM
        date_add(q_start, INTERVAL 3 MONTH)
    )
)
SELECT
  *
FROM
  calendar
ORDER BY
  QTR
