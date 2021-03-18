SELECT
    customerNumber,
    customerName,
    prefecture,
    CONCAT(emp.firstName, ' ', lastName) AS '‰c‹Æ’S“–Ò'
FROM
    customers c
    LEFT JOIN
        employees emp
    ON  c.salesRepEmployeeNumber = emp.employeeNumber
WHERE
    prefecture IN('ˆ¤’mŒ§', 'OdŒ§', 'Šò•ŒŒ§')
;
