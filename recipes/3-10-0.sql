DROP TABLE IF EXISTS sql_cookbook.emp_bonus;

CREATE TABLE sql_cookbook.emp_bonus (EMPNO int, RECEIVED varchar, TYPE int);

INSERT INTO
  sql_cookbook.emp_bonus (EMPNO, RECEIVED, TYPE)
VALUES
  (7934, '17-MAR-2015', 1),
  (7934, '15-FEB-2015', 2),
