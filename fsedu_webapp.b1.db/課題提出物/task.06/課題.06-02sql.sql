SELECT
    c.customerNumber,
    c.customerName,
    p.checkNumber,
    p.paymentDate,
    averageAmount
FROM
    payments p
    INNER JOIN
        customers c
    ON  c.customerNumber = p.customerNumber
    INNER JOIN
        (
            SELECT
                AVG(amount) AS 'averageAmount',
                YEAR(paymentDate) AS 'averageYear',
                MONTH(paymentDate) AS 'averageMonth'
            FROM
                payments
            GROUP BY
                averageYear,
                averageMonth
        )average
    ON  YEAR(p.paymentDate) = averageYear
    AND MONTH(p.paymentDate) = averageMonth
WHERE
    amount >= averageAmount * 2
ORDER BY
    paymentDate
;
