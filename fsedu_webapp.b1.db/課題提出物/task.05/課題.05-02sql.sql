SELECT
    emp.employeeNumber,
    CONCAT(emp.firstName, ' ', emp.lastName) AS '����',
    boss.employeeNumber,
    CONCAT(boss.firstName, ' ', boss.lastName) AS '��i'
FROM
    employees emp,
    employees boss
WHERE
    emp.reportsTo = boss.employeeNumber
AND boss.firstName = '����c'
AND boss.lastName = '�^���q'
;
