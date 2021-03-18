SELECT
    customerName,
    SUM(amount) AS '支払総額'
FROM
    customers c
    INNER JOIN
        payments p
    ON
        c.customerNumber = p.customerNumber
WHERE
    customerName = 'アトリエ グラフィック'
;
