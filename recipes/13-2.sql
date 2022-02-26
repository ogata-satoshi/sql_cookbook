WITH recursive relation AS (
  SELECT
    emp1.ename AS leaf,
    emp1.mgr,
    0 AS depth,
  FROM
    sql_cookbook.emp AS emp1
  WHERE
    emp1.ename = 'MILLER'
  UNION
  ALL
  SELECT
    concat(relation.leaf, '-->', emp.ename) AS leaf,
    emp.mgr,
    depth + 1,
  FROM
    relation,
    sql_cookbook.emp
  WHERE
    relation.mgr = emp.empno
)
SELECT
  leaf AS leaf___branch___root
FROM
  relation
WHERE
  depth = 2
