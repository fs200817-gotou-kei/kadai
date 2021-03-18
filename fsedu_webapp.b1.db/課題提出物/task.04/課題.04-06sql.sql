SELECT
    productName,
    productDescription
FROM
    products
WHERE
    productDescription REGEXP 'オープンドア|開閉可能なドア'
ORDER BY
    SUBSTRING(productName, 6),
    productName
;
