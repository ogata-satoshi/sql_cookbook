SELECT
  CASE
    trx
    WHEN 'PR' THEN 'PURCHASE'
    ELSE 'PAYMENT'
  END AS trx_type,
  AMT,
  sum(
    CASE
      trx
      WHEN 'PR' THEN amt
      ELSE - 1 * amt
    END
  ) OVER (
    ORDER BY
      id
  ) AS balance
FROM
  V
