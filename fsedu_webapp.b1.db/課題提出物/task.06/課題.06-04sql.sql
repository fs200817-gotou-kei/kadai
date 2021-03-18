SELECT
    customerNumber,
    customerName,
    orderNumber,
    productName,
    ¤•i”,
    vŒ£—˜‰v—¦
FROM
    (
        SELECT
            c.customerNumber,
            customerName,
            o.orderNumber,
            productCode,
            (
                SELECT
                    COUNT(orderNumber)
                FROM
                    orderdetails od1
                WHERE
                    od1.orderNumber = od3.orderNumber
            ) AS '¤•i”',
            quantityOrdered * priceEach AS '¤•i‹àŠz',
            (quantityOrdered * priceEach / (
                SELECT
                    SUM(quantityOrdered * priceEach)
                FROM
                    orderdetails od2
                WHERE
                    od2.orderNumber = od3.orderNumber
            )) * 100 AS 'vŒ£—˜‰v—¦'
    FROM
        orderdetails od3
        INNER JOIN
            orders o
        ON  o.orderNumber = od3.orderNumber
        INNER JOIN
            customers c
        ON  c.customerNumber = o.customerNumber
    ORDER BY
        o.orderNumber
) date
INNER JOIN
    products p
ON  p.productCode = date.productCode
WHERE
    ¤•i” > 2
AND vŒ£—˜‰v—¦ > 50
ORDER BY
    vŒ£—˜‰v—¦ DESC
;

