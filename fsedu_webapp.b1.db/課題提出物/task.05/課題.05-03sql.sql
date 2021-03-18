SELECT
    o.orderNumber,
    o.orderDate,
    p.productName
FROM
    orderdetails ord
    INNER JOIN
        products p
    ON
        ord.productCode = p.productCode
    INNER JOIN
        orders o
    ON
        ord.orderNumber = o.orderNumber
    INNER JOIN
        customers c
    ON
        o.customerNumber = c.customerNumber
WHERE
    c.customerName = '�n�[�N �M�t�g'
ORDER BY
    o.orderNumber
;
        
