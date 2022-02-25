DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  *
FROM
  sql_cookbook.emp_project2
ORDER BY
  proj_id
