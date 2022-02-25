SELECT
  emp.deptno,
  ename,
  emp.sal,
  hiredate,
  t2.sal AS latest_sal
FROM
  sql_cookbook.emp
  INNER JOIN (
    SELECT
      emp.deptno,
      sal
    FROM
      sql_cookbook.emp
      INNER JOIN (
        SELECT
          deptno,
          max(hiredate) AS max_hiredate
        FROM
          sql_cookbook.emp
        GROUP BY
          deptno
      ) AS t1 ON emp.deptno = t1.deptno
      AND emp.hiredate = t1.max_hiredate
  ) AS t2 ON emp.deptno = t2.deptno
ORDER BY
  emp.deptno,
  hiredate DESC
