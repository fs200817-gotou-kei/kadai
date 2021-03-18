SELECT
    employeeNumber,
    o.prefecture,
    CONCAT(firstName,' ', lastName) AS 'éÅñº'
FROM
    employees e
    INNER JOIN
        offices o
    ON
        e.officeCode = o.officeCode
WHERE
    o.prefecture = 'à§ím'
    
ORDER BY
    employeeNumber
    ;
