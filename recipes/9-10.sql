WITH recursive monthes AS (
  SELECT
    date_trunc(
      (
        SELECT
          min(hiredate)
        FROM
          sql_cookbook.emp
      ),
      year
    ) AS base_month
  UNION
  ALL
  SELECT
    date_add(base_month, INTERVAL 1 MONTH) AS base_month
  FROM
    monthes
  WHERE
    base_month < date_add(
      date_add(
        date_trunc(
          (
            SELECT
              max(hiredate)
            FROM
              sql_cookbook.emp
          ),
          year
        ),
        INTERVAL 1 year
      ),
      INTERVAL -1 MONTH
    )
)
SELECT
  monthes.base_month AS mth,
  coalesce(count(hiredate), 0) AS num_hired
FROM
  monthes
  LEFT JOIN sql_cookbook.emp ON base_month = date_trunc(hiredate, MONTH)
GROUP BY
  base_month
ORDER BY
  base_month
