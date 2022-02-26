SELECT
  *,
  CASE
    WHEN test_id = max(test_id) over (PARTITION by period_id)
    AND metreq = '-' THEN 1
    ELSE 0
  END AS in_progress
FROM
  (
    SELECT
      student_id,
      test_id,
      grade_id,
      period_id,
      test_date,
      CASE
        WHEN sum(pass_fail) over (PARTITION by period_id) = 0 THEN '-'
        ELSE '+'
      END AS metreq
    FROM
      sql_cookbook.V
  )
