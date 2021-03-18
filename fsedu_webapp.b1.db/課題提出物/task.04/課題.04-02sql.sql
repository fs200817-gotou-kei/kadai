SELECT
    productCode,
    productName,
    productCategory,
    productVendor
FROM
    products
WHERE
    productName REGEXP 'Ship$'
;
