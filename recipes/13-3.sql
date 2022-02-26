WITH recursive relation AS (
  SELECT
    emp1.ename AS tree,
    emp1.empno,
    0 AS depth,
  FROM
    sql_cookbook.emp AS emp1
  WHERE
    emp1.mgr IS NULL
  UNION
  ALL
  SELECT
    concat(relation.tree, ' - ', emp.ename) AS tree,
    emp.empno,
    depth + 1,
  FROM
    relation,
    sql_cookbook.emp
  WHERE
    relation.empno = emp.mgr
)
SELECT
  tree AS tmp_tree
FROM
  relation
ORDER BY
  tree
