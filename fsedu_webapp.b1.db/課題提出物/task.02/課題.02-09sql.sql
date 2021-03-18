SELECT
    c.customerNumber,
    customerName,
    o.orderDate,
    o.status,
    o.comments
FROM
    customers c
    INNER JOIN
        orders o
    ON
        c.customerNumber = o.customerNumber
WHERE
    o.status = '•Û—¯'
ORDER BY
    orderDate
    ;
