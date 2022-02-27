SELECT
  max(
    CASE
      WHEN grp = 1 THEN name_sal
      ELSE NULL
    END
  ) AS top_3,
  max(
    CASE
      WHEN grp = 2 THEN name_sal
      ELSE NULL
    END
  ) AS next_3,
  max(
    CASE
      WHEN grp = 3 THEN name_sal
      ELSE NULL
    END
  ) AS rest,
FROM
  (
    SELECT
      concat(ename, '(', cast(sal AS STRING), ')') AS name_sal,
      dr,
      grp,
      sal,
      row_number() over (
        PARTITION by grp
        ORDER BY
          sal DESC,
          ename DESC
      ) AS rn
    FROM
      (
        SELECT
          ename,
          sal,
          dr,
          CASE
            WHEN dr <= 3 THEN 1
            WHEN dr <= 6 THEN 2
            ELSE 3
          END AS grp
        FROM
          (
            SELECT
              ename,
              sal,
              dense_rank() over (
                ORDER BY
                  sal DESC
              ) AS dr,
            FROM
              sql_cookbook.emp
          )
      )
  )
GROUP BY
  rn
ORDER BY
  rn
