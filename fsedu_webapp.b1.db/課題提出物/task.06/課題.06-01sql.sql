SELECT
    e.employeeNumber,
    CONCAT(e.firstName,' ',e.lastName) AS 'ïÒçêé“',
    CONCAT(e1.firstName,' ',e1.lastName) AS 'ïÒçêêÊ'
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
            firstName = 'ìáí√'
    )e1
    ON
        e.reportsTo = e1.employeeNumber
WHERE
    e.reportsTo = e1.employeeNumber
ORDER BY
    e.employeeNumber
;
