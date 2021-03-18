SELECT
    customerNumber,
    customerName,
    COUNT(orderNumber) AS '‘’•¶”',
    ROUND(SUM(DiffDate)/COUNT(orderNumber)) AS 'o‰×‚Ü‚Å‚Ì•½‹Ï“ú”'
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
        o‰×‚Ü‚Å‚Ì•½‹Ï“ú” DESC
;
