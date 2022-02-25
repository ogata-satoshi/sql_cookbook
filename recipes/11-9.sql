SELECT
  dense_rank() over (
    ORDER BY
      sal
  ) AS rnk,
  sal
FROM
  sql_cookbook.emp
ORDER BY
  rnk
