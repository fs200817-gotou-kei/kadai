SELECT
    customerName,
    prefecture,
    city
FROM
    customers
WHERE
    salesRepEmployeeNumber IS NULL
    ;
