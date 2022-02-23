SELECT
  p1.empno,
  p2.ename,
  concat(
    'project ',
    p1.proj_id,
    ' overlaps project ',
    p2.proj_id
  ) AS msg
FROM
  sql_cookbook.emp_project AS p1,
  sql_cookbook.emp_project AS p2
WHERE
  p1.empno = p2.empno
  AND p1.proj_id < p2.proj_id
  AND p1.proj_end >= p2.proj_start
  AND p1.proj_start <= p2.proj_end
