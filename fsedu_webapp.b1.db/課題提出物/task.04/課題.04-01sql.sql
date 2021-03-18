SELECT
    productCode,
    productName,
    productVendor
FROM
    products
WHERE
    productName REGEXP 'Ford'
;
