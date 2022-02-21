-- BigQuery の場合はこれ
SELECT
  PERCENTILE_CONT(sal, 0.5)
FROM
  sql_cookbook.emp
WHERE
  deptno = 20;

/* postgresql の場合はこれ
SELECT
  PERCENTILE_CONT(0.5) WITHIN GROUP (
    ORDER BY
      sal
  )
FROM
  sql_cookbook.emp
WHERE
  deptno = 20;

*/
