SELECT
    o.Year,
    c.customerNumber,
    c.customerName,
    COALESCE(î≠íçëçäz, 0) AS 'î≠íçëçäz',
    COALESCE(éxï•ëçäz, 0) AS 'éxï•ëçäz',
    COALESCE(î≠íçëçäz, 0) - COALESCE(éxï•ëçäz, 0) AS 'ç∑äz'
FROM
    customers c
    LEFT JOIN
        (
            SELECT
                YEAR(orderDate) AS Year,
                customerNumber,
                SUM(quantityOrdered * priceEach) AS 'î≠íçëçäz'
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
                SUM(amount) AS 'éxï•ëçäz'
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
    î≠íçëçäz IS NOT NULL
OR  éxï•ëçäz IS NOT NULL
ORDER BY
    ç∑äz DESC,
    î≠íçëçäz DESC,
    éxï•ëçäz DESC
;
