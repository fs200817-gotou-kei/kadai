SELECT DISTINCT
    productVendor
FROM
    products
WHERE
    productVendor REGEXP '�_�C�L���X�g'
AND productVendor NOT REGEXP '�_�C�L���X�g��$'
ORDER BY
    productVendor
;
