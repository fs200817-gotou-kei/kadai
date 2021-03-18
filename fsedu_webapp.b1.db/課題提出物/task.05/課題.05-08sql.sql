SELECT
    o.Year,
    c.customerNumber,
    c.customerName,
    COALESCE(�������z, 0) AS '�������z',
    COALESCE(�x�����z, 0) AS '�x�����z',
    COALESCE(�������z, 0) - COALESCE(�x�����z, 0) AS '���z'
FROM
    customers c
    LEFT JOIN
        (
            SELECT
                YEAR(orderDate) AS Year,
                customerNumber,
                SUM(quantityOrdered * priceEach) AS '�������z'
            FROM
                orders o
                LEFT JOIN
                    orderdetails od
                ON
                    o.orderNumber = od.orderNumber
            WHERE
                YEAR(orderDate) = '2019'
            GROUP BY
                Year,
                customerNumber
        ) o
    ON o.customerNumber = c.customerNumber
    LEFT JOIN
        (
            SELECT
                YEAR(paymentDate) AS Year,
                customerNumber,
                SUM(amount) AS '�x�����z'
            FROM
                payments
            WHERE
                YEAR(paymentDate) = '2019'
            GROUP BY
                Year,
                customerNumber
        )p
    ON o.Year = p.Year
    AND o.customerNumber = p.customerNumber
WHERE
    �������z IS NOT NULL
OR  �x�����z IS NOT NULL
ORDER BY
    ���z DESC,
    �������z DESC,
    �x�����z DESC
;
