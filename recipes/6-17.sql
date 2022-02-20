SELECT
  emp_id,
  text
FROM
  employee_comment
WHERE
  text ~ '[0-9]{3}[. -][0-9]{3}[. -][0-9]{4}'
  AND regexp_replace(text, '[0-9]{3}([. -])[0-9]{3}\1[0-9]{4}', '***') ~ '[0-9]{3}[. -][0-9]{3}[. -][0-9]{4}'
