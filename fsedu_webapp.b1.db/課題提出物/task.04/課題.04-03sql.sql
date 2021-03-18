SELECT
    customerNumber,
    customerName,
    prefecture,
    CONCAT(emp.firstName, ' ', lastName) AS '�c�ƒS����'
FROM
    customers c
    LEFT JOIN
        employees emp
    ON  c.salesRepEmployeeNumber = emp.employeeNumber
WHERE
    prefecture IN('���m��', '�O�d��', '�򕌌�')
;
