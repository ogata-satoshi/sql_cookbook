SELECT
  date1,
  sales,
  lag(sales, 1) OVER (
    ORDER BY
      date1
  ) AS salesLagOne,
  lag(sales, 2) OVER (
    ORDER BY
      date1
  ) AS SalesLagTwo,
  round(
    (
      sales + lag(sales, 1) OVER (
        ORDER BY
          date1
      ) + lag(sales, 2) OVER (
        ORDER BY
          date1
      )
    ) / 3,
    3
  ) AS MovingAverage
FROM
  sql_cookbook.sales_table
