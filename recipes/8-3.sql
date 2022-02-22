SELECT
  count(days) AS count_day
FROM
  (
    SELECT
      DATE_ADD(HIREDATE, INTERVAL id DAY) AS days
    FROM
      sql_cookbook.emp,
      sql_cookbook.t500
    WHERE
      ename = 'JONES'
      AND id <= DATE_DIFF(
        (
          SELECT
            HIREDATE
          FROM
            sql_cookbook.emp
          WHERE
            ename = 'BLAKE'
        ),
        (
          SELECT
            HIREDATE
          FROM
            sql_cookbook.emp
          WHERE
            ename = 'JONES'
        ),
        DAY
      )
  )
WHERE
  EXTRACT(
    DAYOFWEEK
    FROM
      days
  ) IN (2, 3, 4, 5, 6)
