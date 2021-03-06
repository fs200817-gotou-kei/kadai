SELECT
    emp.employeeNumber,
    CONCAT(emp.firstName, ' ', emp.lastName) AS '部下',
    boss.employeeNumber,
    CONCAT(boss.firstName, ' ', boss.lastName) AS '上司'
FROM
    employees emp,
    employees boss
WHERE
    emp.reportsTo = boss.employeeNumber
AND boss.firstName = '小野田'
AND boss.lastName = '真理子'
;
