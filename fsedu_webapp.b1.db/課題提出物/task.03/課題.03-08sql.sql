SELECT
    COUNT(ord.orderNumber) AS '�ۗ����̒�����'
FROM
    orderdetails ord
    INNER JOIN
        orders o
    ON  ord.orderNumber = o.orderNumber
WHERE
    o.status = '�ۗ�'
;
