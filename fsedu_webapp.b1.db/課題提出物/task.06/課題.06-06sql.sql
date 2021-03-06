SELECT
    c.customerNumber,
    c.customerName,
    COUNT(*) AS '発送済注文数'
FROM
    customers c,
    orders o
WHERE
    c.customerNumber = o.customerNumber
AND o.status = '発送済'
GROUP BY
    o.customerNumber
HAVING COUNT(orderNumber) > ANY(
    SELECT
        COUNT(orderNumber)
    FROM
        orders
    WHERE
        status = '発送済'
    GROUP BY
        customerNumber
)
ORDER BY
    発送済注文数 DESC
;
