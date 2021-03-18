SELECT
    CONCAT(boss.firstName, ' ', boss.lastName) AS 'ïÒçêêÊ',
    CONCAT(emp.firstName, ' ', emp.lastName) AS 'ïÒçêé“'
FROM
    employees boss
    INNER JOIN
        employees emp
    ON  emp.reportsTo = boss.employeeNumber
ORDER BY
    boss.firstName,
    boss.lastName
;
    
