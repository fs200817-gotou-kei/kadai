SELECT
    orderNumber,
    orderdate,
    shippedDate,
    DATEDIFF(shippedDate, orderDate) AS 'TimeToShip'
FROM
    orders
WHERE
    DATEDIFF(shippedDate, orderDate) >= 7
ORDER BY
    TimeToShip DESC,
    orderNumber
;
