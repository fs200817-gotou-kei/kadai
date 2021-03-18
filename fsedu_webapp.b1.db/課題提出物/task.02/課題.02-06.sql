    SELECT
        customerName,
        COUNT(o.customerNumber) AS '注文件数'
    FROM
        customers c
        INNER JOIN
            orders o
        ON
            c.customerNumber = o.customerNumber
    WHERE
        c.customerName = 'ハーク ギフト'
   ;
