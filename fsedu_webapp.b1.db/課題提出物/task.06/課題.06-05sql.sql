WITH RECURSIVE subordinates AS(
    SELECT
        employeeNumber,
        CONCAT(firstName, lastName) AS '氏名',
        reportsTo,
        1 AS 'レベル'
    FROM
        employees
    WHERE
        reportsTo IS NULL
    UNION ALL
    SELECT
        e.employeeNumber,
        CONCAT(e.firstName, e.lastName),
        e.reportsTo,
        s.レベル + 1
    FROM
        subordinates AS s,
        employees as e
    WHERE
        s.employeeNumber = e.reportsTo
)
SELECT
    employeeNumber,
    氏名,
    reportsTo,
    レベル
FROM
    subordinates
ORDER BY
    レベル
;
