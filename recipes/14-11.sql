SELECT
  max(
    CASE
      WHEN i = 1 THEN each_val
      ELSE NULL
    END
  ) AS val1,
  max(
    CASE
      WHEN i = 2 THEN each_val
      ELSE NULL
    END
  ) AS val2,
  max(
    CASE
      WHEN i = 3 THEN each_val
      ELSE NULL
    END
  ) AS val3,
FROM
  (
    SELECT
      val,
      i,
      substr(
        val,
        begin_colon + 1,
        CASE
          WHEN end_colon - begin_colon - 1 < 0 THEN 0
          ELSE end_colon - begin_colon -1
        END
      ) AS each_val
    FROM
      (
        SELECT
          val,
          i,
          instr(val, ':', 1, i) AS begin_colon,
          instr(val, ':', 1, i + 1) AS end_colon,
        FROM
          (
            SELECT
              val,
              i
            FROM
              sql_cookbook.V,
              unnest(
                generate_array(
                  1,
                  (
                    SELECT
                      max(length(val) - length(REPLACE(val, ':', '')) -1)
                    FROM
                      sql_cookbook.V
                  )
                )
              ) AS i
          )
      )
  )
GROUP BY
  val
