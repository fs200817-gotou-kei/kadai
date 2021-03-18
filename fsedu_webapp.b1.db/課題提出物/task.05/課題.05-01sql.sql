SELECT
    employeeNumber,
    CONCAT(firstName,' ',lastName) AS 'FullName',
    jobPosition
FROM
    employees
WHERE
    reportsTo IS NULL
;
