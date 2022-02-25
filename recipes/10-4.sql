WITH recursive years AS (
  SELECT
    2005 AS yr
  UNION
  ALL
  SELECT
    yr + 1
  FROM
    years
  WHERE
    yr + 1 < 2005 + 10
)
SELECT
  yr,
  count(hiredate) AS cnt
FROM
  years
  LEFT OUTER JOIN sql_cookbook.emp ON years.yr = extract(
    year
    FROM
      emp.hiredate
  )
GROUP BY
  yr
ORDER BY
  yr
