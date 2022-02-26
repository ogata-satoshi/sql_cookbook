WITH unpivot AS (
  SELECT
    row_number() over (
      PARTITION by empno
      ORDER BY
        empno
    ) AS rn,
    ename,
    job,
    sal,
  FROM
    sql_cookbook.emp,
    unnest(generate_array(1, 4, 1)) AS id
  WHERE
    emp.deptno = 10
)
SELECT
  CASE
    WHEN rn = 1 THEN ename
    WHEN rn = 2 THEN job
    WHEN rn = 3 THEN cast(sal AS STRING)
    ELSE NULL
  END AS emps
FROM
  unpivot
