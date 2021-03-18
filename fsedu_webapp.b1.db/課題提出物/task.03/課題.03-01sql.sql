SELECT
    productName,
    orderDate
FROM
    products p
    INNER JOIN
        orderdetails ord
    ON  p.productCode = ord.productCode
    INNER JOIN
        orders o
    ON  ord.orderNumber = o.orderNumber
GROUP BY
    orderDate,
    productName
ORDER BY
    orderDate
;
