SELECT
  *
FROM
  (
    SELECT
      empno,
      ename,
      job,
      MGR,
      hiredate,
      sal,
      comm,
      deptno,
      count(1) AS cnt
    FROM
      emp
    GROUP BY
      empno,
      ename,
      job,
      mgr,
      hiredate,
      sal,
      comm,
      deptno
  ) AS t1
WHERE
  NOT EXISTS (
    SELECT
      NULL
    FROM
      (
        SELECT
          V.empno,
          V.ename,
          V.job,
          V.mgr,
          V.hiredate,
          V.sal,
          V.comm,
          V.deptno,
          count(1) AS cnt
        FROM
          V
        GROUP BY
          V.empno,
          V.ename,
          V.job,
          V.mgr,
          V.hiredate,
          V.sal,
          V.comm,
          V.deptno
      ) AS t2
    WHERE
      t1.empno = t2.empno
      AND t1.ename = t2.ename
      AND t1.job = t2.job
      AND coalesce(t1.mgr, 0) = coalesce(t2.mgr, 0)
      AND t1.hiredate = t2.hiredate
      AND t1.sal = t2.sal
      AND coalesce(t1.comm, 0) = coalesce(t2.comm, 0)
      AND t1.deptno = t2.deptno
      AND t1.cnt = t2.cnt
  )
UNION
ALL
SELECT
  *
FROM
  (
    SELECT
      V.empno,
      V.ename,
      V.job,
      V.mgr,
      V.hiredate,
      V.sal,
      V.comm,
      V.deptno,
      count(1) AS cnt
    FROM
      V
    GROUP BY
      V.empno,
      V.ename,
      V.job,
      V.mgr,
      V.hiredate,
      V.sal,
      V.comm,
      V.deptno
  ) AS t1
WHERE
  NOT EXISTS (
    SELECT
      NULL
    FROM
      (
        SELECT
          empno,
          ename,
          job,
          mgr,
          hiredate,
          sal,
          comm,
          deptno,
          count(1) AS cnt
        FROM
          emp
        GROUP BY
          empno,
          ename,
          job,
          mgr,
          hiredate,
          sal,
          comm,
          deptno
      ) AS t2
    WHERE
      t1.empno = t2.empno
      AND t1.ename = t2.ename
      AND t1.job = t2.job
      AND coalesce(t1.mgr, 0) = coalesce(t2.mgr, 0)
      AND t1.hiredate = t2.hiredate
      AND t1.sal = t2.sal
      AND coalesce(t1.comm, 0) = coalesce(t2.comm, 0)
      AND t1.deptno = t2.deptno
      AND t1.cnt = t2.cnt
  )

/*別解 というか本に載っているのよりこっちのほうが短く読みやすいと思う。
SELECT
  empno,
  ename,
  job,
  MGR,
  hiredate,
  sal,
  comm,
  deptno,
  count(1)
FROM
  emp
GROUP BY
  empno,
  ename,
  job,
  MGR,
  hiredate,
  sal,
  comm,
  deptno
HAVING
  NOT EXISTS (
    SELECT
      *,
      count(1)
    FROM
      V
    GROUP BY
      V.empno,
      V.ename,
      V.job,
      V.MGR,
      V.hiredate,
      V.sal,
      V.comm,
      V.deptno
    HAVING
      emp.empno = V.empno
      AND emp.ename = V.ename
      AND emp.job = V.job
      AND coalesce(emp.mgr, 0) = coalesce(V.mgr, 0)
      AND emp.hiredate = V.hiredate
      AND emp.sal = V.sal
      AND coalesce(emp.comm, 0) = coalesce(V.comm, 0)
      AND emp.deptno = V.deptno
      AND count(ALL emp.empno) = count(ALL V.empno)
  )
UNION
ALL
SELECT
  empno,
  ename,
  job,
  MGR,
  hiredate,
  sal,
  comm,
  deptno,
  count(1) AS cnt
FROM
  V
GROUP BY
  empno,
  ename,
  job,
  MGR,
  hiredate,
  sal,
  comm,
  deptno
HAVING
  NOT EXISTS (
    SELECT
      *,
      count(1)
    FROM
      emp
    GROUP BY
      emp.empno,
      emp.ename,
      emp.job,
      emp.MGR,
      emp.hiredate,
      emp.sal,
      emp.comm,
      emp.deptno
    HAVING
      emp.empno = V.empno
      AND emp.ename = V.ename
      AND emp.job = V.job
      AND coalesce(emp.mgr, 0) = coalesce(V.mgr, 0)
      AND emp.hiredate = V.hiredate
      AND emp.sal = V.sal
      AND coalesce(emp.comm, 0) = coalesce(V.comm, 0)
      AND emp.deptno = V.deptno
      AND count(ALL emp.empno) = count(ALL V.empno)
  )
*/
