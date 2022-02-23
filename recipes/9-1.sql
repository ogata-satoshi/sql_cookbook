SELECT
  DATE_ADD(date(current_year, 3, 1), INTERVAL -1 DAY) AS leap_day
FROM
  (
    SELECT
      extract (
        year
        FROM
          current_date()
      ) AS current_year
  ) AS t1
