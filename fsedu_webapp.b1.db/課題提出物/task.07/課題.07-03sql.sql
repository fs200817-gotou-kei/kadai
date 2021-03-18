SELECT
    ov.customerNumber,
    ov.customerName,
    ov.totalValue
FROM
    (
        SELECT
            c.customerNumber,
            c.customerName,
            SUM(ord.quantityOrdered * ord.priceEach) AS 'totalValue'
        FROM
            customers c,
            orders o,
            orderdetails ord
        WHERE
            c.customerNumber = o.customerNumber
        AND ord.orderNumber = o.orderNumber
        AND o.status = 'î≠ëóçœ'
        GROUP BY
            c.customerNumber
    ) ov
WHERE
    5 > (
        SELECT
            COUNT(customerNumber)
        FROM
            (
                SELECT
                    c.customerNumber,
                    c.customerName,
                    SUM(ord.quantityOrdered * ord.priceEach) totalValue
                FROM
                    customers c,
                    orders o,
                    orderdetails ord
                WHERE
                    c.customerNumber = o.customerNumber
                AND ord.orderNumber = o.orderNumber
                AND o.status = 'î≠ëóçœ'
                GROUP BY
                    c.customerNumber
            ) ov2
        WHERE
            ov.totalValue < ov2.totalValue
    )
ORDER BY
    ov.totalValue DESC
;
