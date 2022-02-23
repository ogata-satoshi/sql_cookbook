SELECT
  firstday,
  date_add(
    date_add(firstday, INTERVAL 1 MONTH),
    INTERVAL -1 DAY
  ) AS lastday
FROM
  (
    SELECT
      date_trunc(current_date(), MONTH) AS firstday
  ) AS t1
