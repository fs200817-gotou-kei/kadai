SELECT
    customerNumber,
    customerName
FROM
    customers
WHERE
    LEFT(customerNumber, 1) NOT REGEXP '[�@-��]'
ORDER BY
    customerName
;    
