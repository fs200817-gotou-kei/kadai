SELECT
    productCode,
    productName
FROM
    products
WHERE
    substring(productCode, LOCATE('_', productCode) + 1, 3) REGEXP '46[1-6]'
ORDER BY
    productCode
;
