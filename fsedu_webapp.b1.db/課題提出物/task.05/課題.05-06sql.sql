SELECT
    customerNumber,
    customerName,
    COUNT(orderNumber) AS '��������',
    ROUND(SUM(DiffDate)/COUNT(orderNumber)) AS '�o�ׂ܂ł̕��ϓ���'
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
        �o�ׂ܂ł̕��ϓ��� DESC
;
