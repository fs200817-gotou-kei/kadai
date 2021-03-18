SELECT
    COUNT(ord.orderNumber) AS '保留中の注文数'
FROM
    orderdetails ord
    INNER JOIN
        orders o
    ON  ord.orderNumber = o.orderNumber
WHERE
    o.status = '保留'
;
