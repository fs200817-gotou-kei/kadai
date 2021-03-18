SELECT
    o.customerNumber,
    c.customerName,
    ROUND(SUM(od.quantityOrdered * od.priceEach), 2) AS '�������z'
FROM
    customers c
    INNER JOIN
        orders o
    ON
        c.customerNumber = o.customerNumber
    INNER JOIN
        orderdetails od
    ON
        o.orderNumber = od.orderNumber
GROUP BY
    o.customerNumber
ORDER BY
    SUM(od.quantityOrdered * od.priceEach) DESC
    ;
