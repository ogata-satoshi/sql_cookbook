DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  1 AS student_id,
  1 AS test_id,
  2 AS grade_id,
  1 AS period_id,
  '2020-02-01' AS test_date,
  0 pass_fail
UNION
ALL
SELECT
  1,
  2,
  2,
  1,
  '2020-03-01',
  1,
UNION
ALL
SELECT
  1,
  3,
  2,
  1,
  '2020-04-01',
  0,
UNION
ALL
SELECT
  1,
  4,
  2,
  2,
  '2020-05-01',
  0,
UNION
ALL
SELECT
  1,
  5,
  2,
  2,
  '2020-06-01',
  0
UNION
ALL
SELECT
  1,
  6,
  2,
  2,
  '2020-07-01',
  0
