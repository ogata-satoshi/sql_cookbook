SELECT
  ename,
  job
FROM
  sql_cookbook.emp
ORDER BY
  right(job, 2);

/* 別解
 select
 ename,
 job
 from
 sql_cookbook.emp
 order by
 substring(job, length(job) - 1);
 */
