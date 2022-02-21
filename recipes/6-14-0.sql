DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  'mo,larry,curly' AS name
UNION
ALL
SELECT
  'tina,gina,jaunita,regina,leena' AS name
