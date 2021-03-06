SELECT
    customerNumber,
    customerName,
    COUNT(orderNumber) AS '総注文数',
    ROUND(SUM(DiffDate)/COUNT(orderNumber)) AS '出荷までの平均日数'
FROM
    (
        SELECT
            orderNumber,
            o.customerNumber,
            c.customerName,
            shippedDate - orderDate AS DiffDate
        FROM
            orders o
            INNER JOIN
                customers c
            ON
                o.customerNumber = c.customerNumber
        )diff
    GROUP BY
        customerNumber
    ORDER BY
        出荷までの平均日数 DESC
;
