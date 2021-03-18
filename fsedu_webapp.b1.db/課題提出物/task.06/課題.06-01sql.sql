SELECT
    e.employeeNumber,
    CONCAT(e.firstName,' ',e.lastName) AS '�񍐎�',
    CONCAT(e1.firstName,' ',e1.lastName) AS '�񍐐�'
FROM
    employees e
    INNER JOIN
    (
        SELECT
            employeeNumber,
            firstName,
            lastName
        FROM
            employees e1
        WHERE
            firstName = '����'
    )e1
    ON
        e.reportsTo = e1.employeeNumber
WHERE
    e.reportsTo = e1.employeeNumber
ORDER BY
    e.employeeNumber
;
