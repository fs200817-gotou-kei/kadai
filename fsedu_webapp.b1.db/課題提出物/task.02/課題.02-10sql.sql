SELECT
    customerName,
    COUNT(status) AS '�����ϐ�'
FROM
    customers c
    INNER JOIN
        orders o
    ON  c.customerNumber = o.customerNumber
WHERE
    status = '������'
GROUP BY
    customerName
ORDER BY
    �����ϐ� DESC
;
