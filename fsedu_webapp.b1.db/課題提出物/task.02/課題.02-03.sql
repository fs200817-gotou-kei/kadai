SELECT
    paymentDate,
    SUM(amount) AS '�x�����z'
FROM
    payments
GROUP BY
    paymentDate
ORDER BY
    paymentDate
    ;
