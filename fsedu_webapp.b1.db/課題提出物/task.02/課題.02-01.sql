SELECT
    customerName,
    CONCAT(e.firstName, ' ', e.lastName) AS 'å˚ç¿íSìñé“'
FROM
    customers c
    INNER JOIN
        employees e
    ON  c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY
    customerName
    ;
