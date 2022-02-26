SELECT
  ename,
  deptno,
  count(ename) over (PARTITION by deptno) AS deptno_cnt,
  job,
  count(job) over (PARTITION by job) AS job_cnt,
  count(ename) over () AS total
FROM
  sql_cookbook.emp
ORDER BY
  deptno
