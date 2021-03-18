SELECT
    YEAR(orderDate) AS 'îN',
    MONTH(orderDate) AS 'åé',
    SUM(quantityOrdered * priceEach) AS 'íçï∂ëçäz'
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
    îN,
    åé
;
