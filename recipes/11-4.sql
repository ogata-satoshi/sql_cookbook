SELECT
  DISTINCT v1.test1,
  v1.test2
FROM
  sql_cookbook.V AS v1,
  sql_cookbook.V AS v2
WHERE
  v1.test1 = v2.test2
  AND v2.test1 = v1.test2
  AND v1.test1 <= v2.test1
