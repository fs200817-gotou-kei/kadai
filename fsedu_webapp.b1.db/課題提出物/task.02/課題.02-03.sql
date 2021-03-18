SELECT
    paymentDate,
    SUM(amount) AS 'éxï•ëçäz'
FROM
    payments
GROUP BY
    paymentDate
ORDER BY
    paymentDate
    ;
