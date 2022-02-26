SELECT
  deptno,
  ename,
  job,
  sal,
  CASE
    WHEN sal = dept_max THEN 'TOP SAL IN DEPT'
    WHEN sal = dept_min THEN 'LOW SAL IN DEPT'
  END AS dept_status,
  CASE
    WHEN sal = job_max THEN 'TOP SAL IN JOB'
    WHEN sal = job_min THEN 'LOW SAL IN DEPT'
  END AS job_status
FROM
  (
    SELECT
      deptno,
      ename,
      job,
      sal,
      max(sal) over (PARTITION by deptno) AS dept_max,
      min(sal) over (PARTITION by deptno) AS dept_min,
      max(sal) over (PARTITION by job) AS job_max,
      min(sal) over (PARTITION by job) AS job_min,
    FROM
      sql_cookbook.emp
  )
WHERE
  sal IN (dept_max, dept_min, job_max, job_min)
ORDER BY
  deptno
