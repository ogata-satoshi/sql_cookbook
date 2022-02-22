SELECT
  DATE_DIFF(max(HIREDATE), min(HIREDATE), MONTH) AS month_count,
  DATE_DIFF(max(HIREDATE), min(HIREDATE), MONTH) / 12 AS year_count
FROM
  sql_cookbook.emp
