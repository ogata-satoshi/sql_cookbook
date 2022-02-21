SELECT
  ename AS ename_and_dname,
  deptno
FROM
  sql_cookbook.emp
WHERE
  deptno = 10
UNION
ALL
SELECT
  '----------',
  NULL
UNION
ALL
SELECT
  dname AS ename_and_dname,
  deptno
FROM
  sql_cookbook.dept
