SELECT
  proj_grp,
  min(proj_start) AS proj_start,
  max(proj_end) AS proj_end
FROM
  (
    SELECT
      proj_id,
      proj_start,
      proj_end,
      sum(
        CASE
          WHEN proj_start = lag_proj_end THEN 0
          ELSE 1
        END
      ) over(
        ORDER BY
          proj_id
      ) AS proj_grp
    FROM
      (
        SELECT
          proj_id,
          proj_start,
          proj_end,
          lag(proj_end) over (
            ORDER BY
              proj_id
          ) AS lag_proj_end
        FROM
          sql_cookbook.V
      )
  )
GROUP BY
  proj_grp
