SELECT
    productCode,
    productName,
    productCategory,
    productVendor
FROM
    products
WHERE
    productCode REGEXP 'S700_2[0-4][0-9][0-9]'
;
