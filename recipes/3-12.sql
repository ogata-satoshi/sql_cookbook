SELECT
  empno,
  ename
FROM
  sql_cookbook.emp
WHERE
  COALESCE(comm, 0) < (
    SELECT
      comm
    FROM
      sql_cookbook.emp
    WHERE
      ename = 'WARD'
  )
