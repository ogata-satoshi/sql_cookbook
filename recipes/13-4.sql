WITH recursive relation AS (
  SELECT
    emp1.ename AS tree,
    emp1.empno,
  FROM
    sql_cookbook.emp AS emp1
  WHERE
    emp1.ename = "JONES"
  UNION
  ALL
  SELECT
    emp.ename AS tree,
    emp.empno,
  FROM
    relation,
    sql_cookbook.emp
  WHERE
    relation.empno = emp.mgr
)
SELECT
  DISTINCT tree AS tmp_tree
FROM
  relation
