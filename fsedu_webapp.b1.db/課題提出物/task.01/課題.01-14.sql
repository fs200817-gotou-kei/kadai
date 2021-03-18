SELECT
    jobPosition,
    CONCAT(
    firstName,' ',lastName) AS '氏名'
FROM
    employees
WHERE
    jobPosition LIKE '%副社長%'
OR  jobPosition LIKE '%マネージャー%'
    ;
