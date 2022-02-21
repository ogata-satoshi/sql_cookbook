INSERT INTO
  sql_cookbook.emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
  )
SELECT
  1111,
  'YODA',
  'JEDI',
  NULL,
  hiredate,
  sal,
  comm,
  NULL
FROM
  sql_cookbook.emp
WHERE
  ename = 'KING'
