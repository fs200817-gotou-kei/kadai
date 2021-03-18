SELECT
    productName,
    productCategory,
    productVendor
FROM
    products
WHERE
    productName REGEXP 'chrysler|chevy|buick'
ORDER BY
    SUBSTRING(productName, 6)
    productName
;
