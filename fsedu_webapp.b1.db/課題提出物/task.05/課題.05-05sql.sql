SELECT
    DATEDIFF(MAX(orderDate), MIN(orderDate)) AS '������'
FROM
    orders
;
