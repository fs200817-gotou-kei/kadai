SELECT
    employeeNumber,
    o.prefecture,
    CONCAT(firstName,' ', lastName) AS '����'
FROM
    employees e
    INNER JOIN
        offices o
    ON
        e.officeCode = o.officeCode
WHERE
    o.prefecture = '���m'
    
ORDER BY
    employeeNumber
    ;
