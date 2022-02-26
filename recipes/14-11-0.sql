DROP VIEW IF EXISTS sql_cookbook.V;

CREATE VIEW sql_cookbook.V AS
SELECT
  'entry:stewiegriffin:lois:brian:'
UNION
ALL
SELECT
  'entry:moe::sizlack:'
UNION
ALL
SELECT
  'entry:petergriffin:meg:chirs:'
UNION
ALL
SELECT
  'entry:willie:'
UNION
ALL
SELECT
  'entry:quagmire:mayorwest:cleveland:'
UNION
ALL
SELECT
  'entry:::flanders:'
UNION
ALL
SELECT
  'entry:robo:tchi:ken:' AS val;
