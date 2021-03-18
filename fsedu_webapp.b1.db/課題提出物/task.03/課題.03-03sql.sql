SELECT
    c.customerName,
    o.orderNumber,
    o.orderDate,
    SUM(ord.quantityOrdered * ord.priceEach) AS value
FROM
    customers c
    INNER JOIN
        orders o
    ON
        c.customerNumber = o.customerNumber
    INNER JOIN
        orderdetails ord
    ON
        o.orderNumber = ord.orderNumber
GROUP BY
    ord.orderNumber
HAVING
    value >= 2500000
ORDER BY
    c.customerNumber,
    o.orderNumber,
    value
    ;
