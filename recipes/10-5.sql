SELECT
  id
FROM
  unnest(generate_array(1, 10)) AS id;
