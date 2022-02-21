DROP TABLE IF EXISTS sales_table;

CREATE TABLE sales_table (date1 VARCHAR, sales int);

INSERT INTO
  sales_table (date1, sales)
VALUES
  ('2020-01-01', 647),
  ('2020-01-02', 561),
  ('2020-01-03', 741),
  ('2020-01-04', 978),
  ('2020-01-05', 1062),
  ('2020-01-06', 1072)
