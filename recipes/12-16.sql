SELECT
  CASE
    WHEN deptno = 10 THEN ename
    ELSE NULL
  END AS d10,
  CASE
    WHEN deptno = 20 THEN ename
    ELSE NULL
  END AS d20,
  CASE
    WHEN deptno = 30 THEN ename
    ELSE NULL
  END AS d30,
  CASE
    WHEN job = "CLERK" THEN ename
    ELSE NULL
  END AS clerks,
  CASE
    WHEN job = "MANAGER" THEN ename
    ELSE NULL
  END AS mgrs,
  CASE
    WHEN job = "PRESIDNET" THEN ename
    ELSE NULL
  END AS prez,
  CASE
    WHEN job = "ANALYST" THEN ename
    ELSE NULL
  END AS anals,
  CASE
    WHEN job = "SALESMAN" THEN ename
    ELSE NULL
  END AS sales,
FROM
  sql_cookbook.emp
