SELECT
    c.customerNumber,
    c.customerName,
    p.amount
FROM
    customers c
    INNER JOIN
        payments p
    ON
        c.customerNumber = p.customerNumber
HAVING
    p.amount >= 10000000
    
ORDER BY
    p.amount DESC
    ;
