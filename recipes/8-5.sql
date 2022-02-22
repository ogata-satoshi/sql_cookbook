SELECT
  DATETIME_DIFF(ward_hiredate, allen_hiredate, SECOND) AS sec,
  DATETIME_DIFF(ward_hiredate, allen_hiredate, MINUTE) AS min,
  DATETIME_DIFF(ward_hiredate, allen_hiredate, HOUR) AS hr,
FROM
  (
    SELECT
      max(
        CASE
          WHEN ename = 'ALLEN' THEN HIREDATE
        END
      ) AS allen_hiredate,
      max(
        CASE
          WHEN ename = 'WARD' THEN hiredate
        END
      ) AS ward_hiredate
    FROM
      sql_cookbook.emp
  ) AS t1
