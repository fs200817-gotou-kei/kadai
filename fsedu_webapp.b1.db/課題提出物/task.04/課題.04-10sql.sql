SELECT DISTINCT
    productVendor
FROM
    products
WHERE
    productVendor REGEXP 'ダイキャスト'
AND productVendor NOT REGEXP 'ダイキャスト社$'
ORDER BY
    productVendor
;
