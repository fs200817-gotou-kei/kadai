SELECT
    customerName,
    CONCAT(e.firstName, ' ', e.lastName) AS '�����S����'
FROM
    customers c
    INNER JOIN
        employees e
    ON  c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY
    customerName
    ;
