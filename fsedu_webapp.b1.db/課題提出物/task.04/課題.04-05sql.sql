SELECT
    customerNumber,
    customerName,
    prefecture,
    city
FROM
    customers
WHERE
    customerName REGEXP '[0-9]'
;
