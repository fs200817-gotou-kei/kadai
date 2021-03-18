SELECT
    c.customerNumber,
    c.customerName,
    COUNT(*) AS 'î≠ëóçœíçï∂êî'
FROM
    customers c,
    orders o
WHERE
    c.customerNumber = o.customerNumber
AND o.status = 'î≠ëóçœ'
GROUP BY
    o.customerNumber
HAVING COUNT(orderNumber) > ANY(
    SELECT
        COUNT(orderNumber)
    FROM
        orders
    WHERE
        status = 'î≠ëóçœ'
    GROUP BY
        customerNumber
)
ORDER BY
    î≠ëóçœíçï∂êî DESC
;
