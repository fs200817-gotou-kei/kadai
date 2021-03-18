WITH RECURSIVE subordinates AS(
    SELECT
        employeeNumber,
        CONCAT(firstName, lastName) AS '����',
        reportsTo,
        1 AS '���x��'
    FROM
        employees
    WHERE
        reportsTo IS NULL
    UNION ALL
    SELECT
        e.employeeNumber,
        CONCAT(e.firstName, e.lastName),
        e.reportsTo,
        s.���x�� + 1
    FROM
        subordinates AS s,
        employees as e
    WHERE
        s.employeeNumber = e.reportsTo
)
SELECT
    employeeNumber,
    ����,
    reportsTo,
    ���x��
FROM
    subordinates
ORDER BY
    ���x��
;
