SELECT
  date_diff(
    date(current_year + 1, 1, 1),
    date(current_year, 1, 1),
    DAY
  ) AS year_days
FROM
  (
    SELECT
      extract (
        year
        FROM
          current_date()
      ) AS current_year
  ) AS t1
