SELECT
    YEAR(orderDate) AS '�N',
    MONTH(orderDate) AS '��',
    SUM(quantityOrdered * priceEach) AS '�������z'
FROM
    (
        SELECT
            orderNumber,
            orderDate
        FROM
            orders
        WHERE
            YEAR(orderDate) = '2019'
        AND MONTH(orderDate) = '8'
    ) o
    INNER JOIN
        orderdetails od
    ON  o.orderNumber = od.orderNumber
GROUP BY
    �N,
    ��
;
