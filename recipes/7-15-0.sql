DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V (id, amt, trx) AS
SELECT
  1,
  100,
  'PR'
UNION
ALL
SELECT
  2,
  100,
  'PR'
UNION
ALL
SELECT
  3,
  50,
  'PY'
UNION
ALL
SELECT
  4,
  100,
  'PR'
UNION
ALL
SELECT
  5,
  200,
  'PY'
UNION
ALL
SELECT
  6,
  50,
  'PY'
