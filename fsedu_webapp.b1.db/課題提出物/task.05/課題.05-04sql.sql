SELECT
    RANK() OVER(ORDER BY ���󒍋��z DESC) AS '�����c�Ɛ���',
    ����,
    �󒍐�,
    ���󒍋��z,
    �R�~�b�V����
FROM
    (
        SELECT
            ����,
            COUNT(quantityOrdered) AS '�󒍐�',
            FORMAT(SUM(totalSales), 2) AS '���󒍋��z',
            FORMAT(SUM(totalSales) * 0.05, 2) AS '�R�~�b�V����'
        FROM
            (
                SELECT
                    CONCAT(e.firstName, ' ', e.lastName) AS '����',
                    od.quantityOrdered,
                    e.employeeNumber,
                    CASE
                        WHEN od.quantityOrdered IS NULL THEN 0.00
                        WHEN od.quantityOrdered = 0 THEN 0.00
                        WHEN od.quantityOrdered > 0
                             THEN od.quantityOrdered * od.priceEach
                    END AS totalSales
                FROM
                    (
                        SELECT
                            employeeNumber,
                            lastName,
                            firstName
                        FROM
                            employees
                        WHERE
                            jobPosition = '�c�ƒS��'
                    ) AS e
                    LEFT JOIN
                        customers c
                    ON  e.employeeNumber = c.salesRepEmployeeNumber
                    LEFT JOIN
                        orders o
                    ON  o.customerNumber = c.customerNumber
                    LEFT JOIN
                        orderdetails od
                    ON  o.orderNumber = od.orderNumber
            ) AS x
        GROUP BY
            employeeNumber
        ORDER BY
            ���󒍋��z DESC
    ) result
;
