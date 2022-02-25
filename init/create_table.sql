DROP SCHEMA IF EXISTS sql_cookbook CASCADE;

CREATE SCHEMA sql_cookbook;

DROP TABLE IF EXISTS sql_cookbook.emp;

CREATE TABLE sql_cookbook.emp (
  EMPNO INT,
  ENAME STRING,
  JOB STRING,
  MGR INT,
  HIREDATE DATE,
  SAL INT,
  COMM INT,
  DEPTNO INT
);

INSERT INTO
  sql_cookbook.emp (
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
    '2005-12-17',
    800,
    NULL,
    20
  ),
  (
    7499,
    'ALLEN',
    'SALESMAN',
    7698,
    '2006-02-20',
    1600,
    300,
    30
  ),
  (
    7521,
    'WARD',
    'SALESMAN',
    7698,
    '2006-02-22',
    1250,
    500,
    30
  ),
  (
    7566,
    'JONES',
    'MANAGER',
    7839,
    '2006-04-02',
    2975,
    NULL,
    20
  ),
  (
    7654,
    'MARTIN',
    'SALESMAN',
    7698,
    '2006-09-28',
    1250,
    1400,
    30
  ),
  (
    7698,
    'BLAKE',
    'MANAGER',
    7839,
    '2006-05-01',
    2850,
    NULL,
    30
  ),
  (
    7782,
    'CLARK',
    'MANAGER',
    7839,
    '2006-06-09',
    2450,
    NULL,
    10
  ),
  (
    7788,
    'SCOTT',
    'ANALYST',
    7566,
    '2007-12-09',
    3000,
    NULL,
    20
  ),
  (
    7839,
    'KING',
    'PRESIDENT',
    NULL,
    '2006-11-17',
    5000,
    NULL,
    10
  ),
  (
    7844,
    'TURNER',
    'SALESMAN',
    7698,
    '2006-09-08',
    1500,
    0,
    30
  ),
  (
    7876,
    'ADAMS',
    'CLERK',
    7788,
    '2008-01-12',
    1100,
    NULL,
    20
  ),
  (
    7900,
    'JAMES',
    'CLERK',
    7698,
    '2006-12-03',
    950,
    NULL,
    30
  ),
  (
    7902,
    'FORD',
    'ANALYST',
    7566,
    '2006-12-03',
    3000,
    NULL,
    20
  ),
  (
    7934,
    'MILLER',
    'CLERK',
    7782,
    '2007-01-23',
    1300,
    NULL,
    10
  );

DROP TABLE IF EXISTS sql_cookbook.dept;

CREATE TABLE sql_cookbook.dept (DEPTNO INT, DNAME STRING, LOC STRING);

INSERT INTO
  sql_cookbook.dept (DEPTNO, DNAME, LOC)
VALUES
  (10, 'ACCOUNTING', 'NEW YORK'),
  (20, 'RESEARCH', 'DALLAS'),
  (30, 'SALES', 'CHICAGO'),
  (40, 'OPERATIONS', 'BOSTON');

-- 第5章のために SMEAGOL スキーマを作成しておく
DROP SCHEMA IF EXISTS SMEAGOL CASCADE;

CREATE SCHEMA SMEAGOL;

DROP TABLE IF EXISTS SMEAGOL.emp;

CREATE TABLE SMEAGOL.emp (
  EMPNO INT,
  ENAME STRING,
  JOB STRING,
  MGR INT,
  HIREDATE DATE,
  SAL INT,
  COMM INT,
  DEPTNO INT
);

DROP TABLE IF EXISTS SMEAGOL.dept;

CREATE TABLE SMEAGOL.dept (DEPTNO INT, DNAME STRING, LOC STRING);

INSERT INTO
  SMEAGOL.emp (
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
    '2005-12-17',
    800,
    NULL,
    20
  ),
  (
    7499,
    'ALLEN',
    'SALESMAN',
    7698,
    '2006-02-20',
    1600,
    300,
    30
  ),
  (
    7521,
    'WARD',
    'SALESMAN',
    7698,
    '2006-02-22',
    1250,
    500,
    30
  ),
  (
    7566,
    'JONES',
    'MANAGER',
    7839,
    '2006-04-02',
    2975,
    NULL,
    20
  ),
  (
    7654,
    'MARTIN',
    'SALESMAN',
    7698,
    '2006-09-28',
    1250,
    1400,
    30
  ),
  (
    7698,
    'BLAKE',
    'MANAGER',
    7839,
    '2006-05-01',
    2850,
    NULL,
    30
  ),
  (
    7782,
    'CLARK',
    'MANAGER',
    7839,
    '2006-06-09',
    2450,
    NULL,
    10
  ),
  (
    7788,
    'SCOTT',
    'ANALYST',
    7566,
    '2007-12-09',
    3000,
    NULL,
    20
  ),
  (
    7839,
    'KING',
    'PRESIDENT',
    NULL,
    '2006-11-17',
    5000,
    NULL,
    10
  ),
  (
    7844,
    'TURNER',
    'SALESMAN',
    7698,
    '2006-09-08',
    1500,
    0,
    30
  ),
  (
    7876,
    'ADAMS',
    'CLERK',
    7788,
    '2008-01-12',
    1100,
    NULL,
    20
  ),
  (
    7900,
    'JAMES',
    'CLERK',
    7698,
    '2006-12-03',
    950,
    NULL,
    30
  ),
  (
    7902,
    'FORD',
    'ANALYST',
    7566,
    '2006-12-03',
    3000,
    NULL,
    20
  ),
  (
    7934,
    'MILLER',
    'CLERK',
    7782,
    '2007-01-23',
    1300,
    NULL,
    10
  );

INSERT INTO
  SMEAGOL.dept (DEPTNO, DNAME, LOC)
VALUES
  (10, 'ACCOUNTING', 'NEW YORK'),
  (20, 'RESEARCH', 'DALLAS'),
  (30, 'SALES', 'CHICAGO'),
  (40, 'OPERATIONS', 'BOSTON');

-- 6章にして使用するテーブルを作成する
DROP TABLE IF EXISTS sql_cookbook.t10;

CREATE TABLE sql_cookbook.t10 (id int);

INSERT INTO
  sql_cookbook.t10 (id)
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
DROP TABLE IF EXISTS sql_cookbook.author_names;

CREATE TABLE sql_cookbook.author_names (a_name STRING);

INSERT INTO
  sql_cookbook.author_names (a_name)
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

-- 8章で使うテーブル
DROP TABLE IF EXISTS sql_cookbook.t500;

DROP TABLE IF EXISTS sql_cookbook.t500;

CREATE TABLE IF NOT EXISTS sql_cookbook.t500 (id int) AS
SELECT
  row_number() over () AS id
FROM
  UNNEST(generate_array(1, 500));

-- 9章で使うテーブル
DROP TABLE IF EXISTS sql_cookbook.emp_project;

CREATE TABLE sql_cookbook.emp_project (
  empno int,
  ename STRING,
  proj_id int,
  proj_start date,
  proj_end date
);

INSERT INTO
  sql_cookbook.emp_project (empno, ename, proj_id, proj_start, proj_end)
VALUES
  (7782, 'CLARK', 1, '2020-06-16', '2020-06-18'),
  (7782, 'CLARK', 4, '2020-06-19', '2020-06-24'),
  (7782, 'CLARK', 7, '2020-06-22', '2020-06-25'),
  (7782, 'CLARK', 10, '2020-06-25', '2020-06-28'),
  (7782, 'CLARK', 13, '2020-06-28', '2020-07-02'),
  (7839, 'KING', 2, '2020-06-17', '2020-06-21'),
  (7839, 'KING', 8, '2020-06-23', '2020-06-25'),
  (7839, 'KING', 14, '2020-06-29', '2020-06-30'),
  (7839, 'KING', 11, '2020-06-26', '2020-06-27'),
  (7839, 'KING', 5, '2020-06-20', '2020-06-24'),
  (7934, 'MILLER', 3, '2020-06-18', '2020-06-22'),
  (7934, 'MILLER', 12, '2020-06-27', '2020-06-28'),
  (7934, 'MILLER', 15, '2020-06-30', '2020-07-03'),
  (7934, 'MILLER', 9, '2020-06-24', '2020-06-27'),
  (7934, 'MILLER', 6, '2020-06-21', '2020-06-23');

-- 10章で使うテーブル
DROP TABLE IF EXISTS sql_cookbook.emp_project2;

CREATE TABLE sql_cookbook.emp_project2 (
  proj_id int,
  proj_start date,
  proj_end date
);

INSERT INTO
  sql_cookbook.emp_project2 (proj_id, proj_start, proj_end)
VALUES
  (1, '2020-01-01', '2020-01-02'),
  (2, '2020-01-02', '2020-01-03'),
  (3, '2020-01-03', '2020-01-04'),
  (4, '2020-01-04', '2020-01-05'),
  (5, '2020-01-06', '2020-01-07'),
  (6, '2020-01-16', '2020-01-17'),
  (7, '2020-01-17', '2020-01-18'),
  (8, '2020-01-18', '2020-01-19'),
  (9, '2020-01-19', '2020-01-20'),
  (10, '2020-01-21', '2020-01-22'),
  (11, '2020-01-26', '2020-01-27'),
  (12, '2020-01-27', '2020-01-28'),
  (13, '2020-01-28', '2020-01-29'),
  (14, '2020-01-29', '2020-01-30');
