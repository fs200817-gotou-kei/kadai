SELECT
    DAYOFWEEK(orderDate) AS 'ソート順',
    DAYNAME(orderDate) AS '曜日',
    COUNT(DAYOFWEEK(orderDate)) AS '注文数'
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
    ソート順
;
