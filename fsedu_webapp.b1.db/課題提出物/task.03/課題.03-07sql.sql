SELECT
    DAYOFWEEK(orderDate) AS '�\�[�g��',
    DAYNAME(orderDate) AS '�j��',
    COUNT(DAYOFWEEK(orderDate)) AS '������'
FROM
    products p
    INNER JOIN 
        orderdetails od
    ON  od.productCode = p.productCode
    INNER JOIN
        orders o
    ON  o.orderNumber = od.orderNumber
GROUP BY
    DAYNAME(orderDate),
    DAYOFWEEK(orderDate)
ORDER BY
    �\�[�g��
;
