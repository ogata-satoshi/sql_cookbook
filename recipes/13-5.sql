SELECT
  DISTINCT origin.ename,
  CASE
    WHEN child.ename IS NULL THEN 1
    ELSE 0
  END AS is_leaf,
  CASE
    WHEN child.ename IS NOT NULL
    AND parent.ename IS NOT NULL THEN 1
    ELSE 0
  END AS is_branch,
  CASE
    WHEN parent.ename IS NULL THEN 1
    ELSE 0
  END AS is_root
FROM
  sql_cookbook.emp AS origin
  LEFT OUTER JOIN sql_cookbook.emp AS child ON origin.empno = child.mgr
  LEFT OUTER JOIN sql_cookbook.emp AS parent ON origin.mgr = parent.empno
ORDER BY
  is_leaf,
  is_branch,
  is_root
