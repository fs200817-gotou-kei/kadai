SELECT
    jobPosition,
    CONCAT(
    firstName,' ',lastName) AS '����'
FROM
    employees
WHERE
    jobPosition LIKE '%���В�%'
OR  jobPosition LIKE '%�}�l�[�W���[%'
    ;
