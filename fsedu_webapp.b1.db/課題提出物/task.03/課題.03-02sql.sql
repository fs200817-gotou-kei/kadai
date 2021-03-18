SELECT
    o.orderNumber,
    p.productName,
    ord.quantityOrdered,
    ord.priceEach,
    o.orderDate,
    o.status
FROM
    products p
    INNER JOIN
        orderdetails ord
    ON
        p.productCode = ord.productCode
    INNER JOIN
        orders o
    ON
        ord.orderNumber = o.orderNumber
WHERE
    p.productName = '1940 Ford Pickup Truck'
ORDER BY
    o.orderDate DESC
    ;
