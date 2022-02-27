SELECT
  split(name, ',') [offset(1)] AS sub
FROM
  sql_cookbook.V
