SELECT
  proj_id,
  proj_start,
  proj_end
FROM
  (
    SELECT
      proj_id,
      proj_start,
      proj_end,
      lead(proj_start) over (
        ORDER BY
          proj_id
      ) AS lead_proj_start
    FROM
      sql_cookbook.V
  )
WHERE
  lead_proj_start = proj_end
ORDER BY
  proj_id
