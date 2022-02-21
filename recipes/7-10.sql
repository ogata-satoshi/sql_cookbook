SELECT
  PERCENTILE_CONT(0.5) WITHIN GROUP (
    ORDER BY
      sal
  )
FROM
  emp
WHERE
  deptno = 20;

/* BigQuery の場合はこれ
SELECT
  PERCENTILE_CONT(sal, 0.5) over ()
FROM
  emp
WHERE
  deptno = 20
*/
