    SELECT
        customerName,
        COUNT(o.customerNumber) AS '��������'
    FROM
        customers c
        INNER JOIN
            orders o
        ON
            c.customerNumber = o.customerNumber
    WHERE
        c.customerName = '�n�[�N �M�t�g'
   ;
