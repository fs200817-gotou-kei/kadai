SELECT
    employeeNumber,
    firstName,
    lastName,
    firstNameKana,
    lastNameKana
FROM
    employees
ORDER BY
    firstNameKana,
    lastNameKana ASC
;
