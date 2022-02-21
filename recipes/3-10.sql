/* 3-9 と同じ */
SELECT
  t1.deptno,
  total_sal,
  total_bonus
FROM
  (
    SELECT
      emp.deptno,
      sum(
        sal * CASE
          emp_bonus.type
          WHEN 1 THEN 0.1
          WHEN 2 THEN 0.2
          WHEN 3 THEN 0.3
        END
      ) AS total_bonus
    FROM
      sql_cookbook.emp
      INNER JOIN sql_cookbook.emp_bonus ON emp.empno = emp_bonus.empno
    WHERE
      emp.deptno = 10
    GROUP BY
      deptno
  ) AS t1
  INNER JOIN (
    SELECT
      deptno,
      sum(sal) AS total_sal
    FROM
      sql_cookbook.emp
    WHERE
      deptno = 10
    GROUP BY
      deptno
  ) AS t2 ON t1.deptno = t2.deptno
