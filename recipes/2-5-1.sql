SELECT
  ename,
  sal,
  comm
FROM
  (
    SELECT
      ename,
      sal,
      comm,
      CASE
        WHEN comm IS NULL THEN 1
        ELSE 0
      END AS is_null
    FROM
      sql_cookbook.emp
  ) AS t1
ORDER BY
  is_null,
  comm;

/* 別解
 SELECT
 ename,
 sal,
 comm
 from
 sql_cookbook.emp
 ORDER BY
 CASE
 WHEN comm IS NULL THEN 1
 ELSE 0
 END,
 comm
 */
