WITH extract_regex AS (
  SELECT
    regexp_extract(text, r '[0-9]{3}([. -])[0-9]{3}[. -][0-9]{4}') AS SEPARATOR,
    emp_id,
    text
  FROM
    sql_cookbook.employee_comment
)
SELECT
  emp_id,
  text,
FROM
  extract_regex
WHERE
  regexp_contains(text, '[0-9]{3}[. -][0-9]{3}[. -][0-9]{4}')
  AND regexp_contains(
    regexp_replace(
      text,
      concat(
        r '[0-9]{3}',
        SEPARATOR,
        '[0-9]{3}',
        SEPARATOR,
        '[0-9]{4}'
      ),
      '***'
    ),
    '[0-9]{3}[. -][0-9]{3}[. -][0-9]{4}'
  )
