SELECT
    �����N,
    ������,
    SUM(���v���z) AS '���㍇�v'
FROM
    (
        SELECT
            YEAR(orderDate) AS '�����N',
            MONTH(orderDate) AS '������',
            quantityOrdered * priceEach AS '���v���z'
        FROM
            orders o
            INNER JOIN
                orderdetails ord
            ON  o.orderNumber = ord.orderNumber
        WHERE
            o.status <> '�L�����Z��'
        AND o.status <> '�W����'
        GROUP BY
            �����N,
            ������,
            ���v���z
        )salesByOrder
    GROUP BY
        �����N,
        ������
    ;
