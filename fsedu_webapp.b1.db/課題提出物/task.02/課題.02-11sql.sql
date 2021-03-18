SELECT
    CONCAT(boss.firstName, ' ', boss.lastName) AS '�񍐐�',
    CONCAT(emp.firstName, ' ', emp.lastName) AS '�񍐎�'
FROM
    employees boss
    INNER JOIN
        employees emp
    ON  emp.reportsTo = boss.employeeNumber
ORDER BY
    boss.firstName,
    boss.lastName
;
    
