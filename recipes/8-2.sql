SELECT
  DATE_DIFF(
    (
      SELECT
        HIREDATE
      FROM
        sql_cookbook.emp
      WHERE
        ename = 'WARD'
    ),
    (
      SELECT
        HIREDATE
      FROM
        sql_cookbook.emp
      WHERE
        ename = 'ALLEN'
    ),
    DAY
  )
