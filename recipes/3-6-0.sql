DROP TABLE IF EXISTS sql_cookbook.emp_bonus;

CREATE TABLE sql_cookbook.emp_bonus (EMPNO int, RECEIVED varchar, TYPE int);

INSERT INTO
  sql_cookbook.emp_bonus (EMPNO, RECEIVED, TYPE)
VALUES
  (7369, '14-MAR-2015', 1),
  (7900, '14-MAR-2015', 2),
  (7788, '14-MAR-2015', 2);
