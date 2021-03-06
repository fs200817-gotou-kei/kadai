SELECT
    YEAR(orderDate) AS '年',
    MONTH(orderDate) AS '月',
    SUM(quantityOrdered * priceEach) AS '注文総額'
FROM
    (
        SELECT
            orderNumber,
            orderDate
        FROM
            orders
        WHERE
            YEAR(orderDate) = '2019'
        AND MONTH(orderDate) = '8'
    ) o
    INNER JOIN
        orderdetails od
    ON  o.orderNumber = od.orderNumber
GROUP BY
    年,
    月
;
