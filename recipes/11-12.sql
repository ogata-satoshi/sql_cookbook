WITH recursive sample AS (
  SELECT
    1 AS id,
    current_date() AS order_date,
    date_add(current_date, INTERVAL 2 DAY) AS process_date,
  UNION
  ALL
  SELECT
    id + 1,
    date_add(order_date, INTERVAL 1 DAY) AS order_date,
    date_add(process_date, INTERVAL 1 DAY) AS process_date
  FROM
    sample
  WHERE
    id < 3
)
SELECT
  id,
  order_date,
  process_date,
  CASE
    WHEN INDEX = 0 THEN NULL
    ELSE date_add(order_date, INTERVAL 3 DAY)
  END AS verified,
  CASE
    WHEN INDEX = 0 THEN NULL
    WHEN INDEX = 1 THEN NULL
    ELSE date_add(order_date, INTERVAL 4 DAY)
  END AS shipped
FROM
  sample,
  UNNEST(generate_array(0, 2, 1)) AS INDEX
ORDER BY
  id
