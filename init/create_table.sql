DROP TABLE IF EXISTS emp;

CREATE TABLE emp (
  EMPNO INT,
  ENAME VARCHAR,
  JOB VARCHAR,
  MGR INT,
  HIREDATE VARCHAR,
  SAL INT,
  COMM INT,
  DEPTNO INT
);

DROP TABLE IF EXISTS dept;

CREATE TABLE dept (DEPTNO INT, DNAME VARCHAR, LOC VARCHAR);

INSERT INTO
  emp (
    EMPNO,
    ENAME,
    JOB,
    MGR,
    HIREDATE,
    SAL,
    COMM,
    DEPTNO
  )
VALUES
  (
    7369,
    'SMITH',
    'CLERK',
    7902,
    '17-DEC-2005',
    800,
    NULL,
    20
  ),
  (
    7499,
    'ALLEN',
    'SALESMAN',
    7698,
    '20-FEB-2006',
    1600,
    300,
    30
  ),
  (
    7521,
    'WARD',
    'SALESMAN',
    7698,
    '22-FEB-2006',
    1250,
    500,
    30
  ),
  (
    7566,
    'JONES',
    'MANAGER',
    7839,
    '02-APR-2006',
    2975,
    NULL,
    20
  ),
  (
    7654,
    'MARTIN',
    'SALESMAN',
    7698,
    '28-SEP-2006',
    1250,
    1400,
    30
  ),
  (
    7698,
    'BLAKE',
    'MANAGER',
    7839,
    '01-MAY-2006',
    2850,
    NULL,
    30
  ),
  (
    7782,
    'CLARK',
    'MANAGER',
    7839,
    '09-JUN-2006',
    2450,
    NULL,
    10
  ),
  (
    7788,
    'SCOTT',
    'ANALYST',
    7566,
    '09-DEC-2007',
    3000,
    NULL,
    20
  ),
  (
    7839,
    'KING',
    'PRESIDENT',
    NULL,
    '17-NOV-2006',
    5000,
    NULL,
    10
  ),
  (
    7844,
    'TURNER',
    'SALESMAN',
    7698,
    '08-SEP-2006',
    1500,
    0,
    30
  ),
  (
    7876,
    'ADAMS',
    'CLERK',
    7788,
    '12-JAN-2008',
    1100,
    NULL,
    20
  ),
  (
    7900,
    'JAMES',
    'CLERK',
    7698,
    '03-DEC-2006',
    950,
    NULL,
    30
  ),
  (
    7902,
    'FORD',
    'ANALYST',
    7566,
    '03-DEC-2006',
    3000,
    NULL,
    20
  ),
  (
    7934,
    'MILLER',
    'CLERK',
    7782,
    '23-JAN-2007',
    1300,
    NULL,
    10
  );

INSERT INTO
  dept (DEPTNO, DNAME, LOC)
VALUES
  (10, 'ACCOUNTING', 'NEW YORK'),
  (20, 'RESEARCH', 'DALLAS'),
  (30, 'SALES', 'CHICAGO'),
  (40, 'OPERATIONS', 'BOSTON');

DROP TABLE IF EXISTS emp;

CREATE TABLE emp (
  EMPNO INT,
  ENAME VARCHAR,
  JOB VARCHAR,
  MGR INT,
  HIREDATE VARCHAR,
  SAL INT,
  COMM INT,
  DEPTNO INT
);

DROP TABLE IF EXISTS dept;

CREATE TABLE dept (DEPTNO INT, DNAME VARCHAR, LOC VARCHAR);

INSERT INTO
  emp (
    EMPNO,
    ENAME,
    JOB,
    MGR,
    HIREDATE,
    SAL,
    COMM,
    DEPTNO
  )
VALUES
  (
    7369,
    'SMITH',
    'CLERK',
    7902,
    '17-DEC-2005',
    800,
    NULL,
    20
  ),
  (
    7499,
    'ALLEN',
    'SALESMAN',
    7698,
    '20-FEB-2006',
    1600,
    300,
    30
  ),
  (
    7521,
    'WARD',
    'SALESMAN',
    7698,
    '22-FEB-2006',
    1250,
    500,
    30
  ),
  (
    7566,
    'JONES',
    'MANAGER',
    7839,
    '02-APR-2006',
    2975,
    NULL,
    20
  ),
  (
    7654,
    'MARTIN',
    'SALESMAN',
    7698,
    '28-SEP-2006',
    1250,
    1400,
    30
  ),
  (
    7698,
    'BLAKE',
    'MANAGER',
    7839,
    '01-MAY-2006',
    2850,
    NULL,
    30
  ),
  (
    7782,
    'CLARK',
    'MANAGER',
    7839,
    '09-JUN-2006',
    2450,
    NULL,
    10
  ),
  (
    7788,
    'SCOTT',
    'ANALYST',
    7566,
    '09-DEC-2007',
    3000,
    NULL,
    20
  ),
  (
    7839,
    'KING',
    'PRESIDENT',
    NULL,
    '17-NOV-2006',
    5000,
    NULL,
    10
  ),
  (
    7844,
    'TURNER',
    'SALESMAN',
    7698,
    '08-SEP-2006',
    1500,
    0,
    30
  ),
  (
    7876,
    'ADAMS',
    'CLERK',
    7788,
    '12-JAN-2008',
    1100,
    NULL,
    20
  ),
  (
    7900,
    'JAMES',
    'CLERK',
    7698,
    '03-DEC-2006',
    950,
    NULL,
    30
  ),
  (
    7902,
    'FORD',
    'ANALYST',
    7566,
    '03-DEC-2006',
    3000,
    NULL,
    20
  ),
  (
    7934,
    'MILLER',
    'CLERK',
    7782,
    '23-JAN-2007',
    1300,
    NULL,
    10
  );

INSERT INTO
  dept (DEPTNO, DNAME, LOC)
VALUES
  (10, 'ACCOUNTING', 'NEW YORK'),
  (20, 'RESEARCH', 'DALLAS'),
  (30, 'SALES', 'CHICAGO'),
  (40, 'OPERATIONS', 'BOSTON');

-- 第5章のために "SMEAGOL" スキーマを作成しておく
DROP SCHEMA IF EXISTS "SMEAGOL" CASCADE;

CREATE SCHEMA "SMEAGOL";

DROP TABLE IF EXISTS "SMEAGOL".emp;

CREATE TABLE "SMEAGOL".emp (
  EMPNO INT,
  ENAME VARCHAR,
  JOB VARCHAR,
  MGR INT,
  HIREDATE VARCHAR,
  SAL INT,
  COMM INT,
  DEPTNO INT
);

DROP TABLE IF EXISTS "SMEAGOL".dept;

CREATE TABLE "SMEAGOL".dept (DEPTNO INT, DNAME VARCHAR, LOC VARCHAR);

INSERT INTO
  "SMEAGOL".emp (
    EMPNO,
    ENAME,
    JOB,
    MGR,
    HIREDATE,
    SAL,
    COMM,
    DEPTNO
  )
VALUES
  (
    7369,
    'SMITH',
    'CLERK',
    7902,
    '17-DEC-2005',
    800,
    NULL,
    20
  ),
  (
    7499,
    'ALLEN',
    'SALESMAN',
    7698,
    '20-FEB-2006',
    1600,
    300,
    30
  ),
  (
    7521,
    'WARD',
    'SALESMAN',
    7698,
    '22-FEB-2006',
    1250,
    500,
    30
  ),
  (
    7566,
    'JONES',
    'MANAGER',
    7839,
    '02-APR-2006',
    2975,
    NULL,
    20
  ),
  (
    7654,
    'MARTIN',
    'SALESMAN',
    7698,
    '28-SEP-2006',
    1250,
    1400,
    30
  ),
  (
    7698,
    'BLAKE',
    'MANAGER',
    7839,
    '01-MAY-2006',
    2850,
    NULL,
    30
  ),
  (
    7782,
    'CLARK',
    'MANAGER',
    7839,
    '09-JUN-2006',
    2450,
    NULL,
    10
  ),
  (
    7788,
    'SCOTT',
    'ANALYST',
    7566,
    '09-DEC-2007',
    3000,
    NULL,
    20
  ),
  (
    7839,
    'KING',
    'PRESIDENT',
    NULL,
    '17-NOV-2006',
    5000,
    NULL,
    10
  ),
  (
    7844,
    'TURNER',
    'SALESMAN',
    7698,
    '08-SEP-2006',
    1500,
    0,
    30
  ),
  (
    7876,
    'ADAMS',
    'CLERK',
    7788,
    '12-JAN-2008',
    1100,
    NULL,
    20
  ),
  (
    7900,
    'JAMES',
    'CLERK',
    7698,
    '03-DEC-2006',
    950,
    NULL,
    30
  ),
  (
    7902,
    'FORD',
    'ANALYST',
    7566,
    '03-DEC-2006',
    3000,
    NULL,
    20
  ),
  (
    7934,
    'MILLER',
    'CLERK',
    7782,
    '23-JAN-2007',
    1300,
    NULL,
    10
  );

INSERT INTO
  "SMEAGOL".dept (DEPTNO, DNAME, LOC)
VALUES
  (10, 'ACCOUNTING', 'NEW YORK'),
  (20, 'RESEARCH', 'DALLAS'),
  (30, 'SALES', 'CHICAGO'),
  (40, 'OPERATIONS', 'BOSTON');

-- 6章にして使用するテーブルを作成する
DROP TABLE IF EXISTS t10;

CREATE TABLE t10 (id int);

INSERT INTO
  t10 (id)
VALUES
  (1),
  (2),
  (3),
  (4),
  (5),
  (6),
  (7),
  (8),
  (9),
  (10);

-- 6-16用テーブル
DROP TABLE IF EXISTS author_names;

CREATE TABLE author_names (a_name VARCHAR);

INSERT INTO
  author_names (a_name)
VALUES
  ('Johnson'),
  ('Jonson'),
  ('Jonsen'),
  ('Jensen'),
  ('Johnsen'),
  ('Shakespeare'),
  ('Shakspear'),
  ('Sheakspir'),
  ('Shakespar');
