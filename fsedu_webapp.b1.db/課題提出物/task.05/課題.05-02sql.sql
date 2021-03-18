SELECT
    emp.employeeNumber,
    CONCAT(emp.firstName, ' ', emp.lastName) AS 'ïîâ∫',
    boss.employeeNumber,
    CONCAT(boss.firstName, ' ', boss.lastName) AS 'è„éi'
FROM
    employees emp,
    employees boss
WHERE
    emp.reportsTo = boss.employeeNumber
AND boss.firstName = 'è¨ñÏìc'
AND boss.lastName = 'ê^óùéq'
;
