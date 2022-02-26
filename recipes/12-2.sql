SELECT
  max(
    CASE
      WHEN job = "CLERK" THEN ename
    END
  ) AS clerks,
  max(
    CASE
      WHEN job = "ANALYST" THEN ename
    END
  ) AS analysts,
  max(
    CASE
      WHEN job = "MANAGER" THEN ename
    END
  ) AS mgrs,
  max(
    CASE
      WHEN job = "PRESIDENT" THEN ename
    END
  ) AS prez,
  max(
    CASE
      WHEN job = "SALESMAN" THEN ename
    END
  ) AS sales,
FROM
  (
    SELECT
      job,
      ename,
      row_number() over (
        PARTITION by job
        ORDER BY
          ename
      ) AS rn
    FROM
      sql_cookbook.emp
  )
GROUP BY
  rn
