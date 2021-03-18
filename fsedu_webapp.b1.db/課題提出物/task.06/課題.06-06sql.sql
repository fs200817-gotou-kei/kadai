SELECT
    c.customerNumber,
    c.customerName,
    COUNT(*) AS '�����ϒ�����'
FROM
    customers c,
    orders o
WHERE
    c.customerNumber = o.customerNumber
AND o.status = '������'
GROUP BY
    o.customerNumber
HAVING COUNT(orderNumber) > ANY(
    SELECT
        COUNT(orderNumber)
    FROM
        orders
    WHERE
        status = '������'
    GROUP BY
        customerNumber
)
ORDER BY
    �����ϒ����� DESC
;
