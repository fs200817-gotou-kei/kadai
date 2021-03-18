SELECT
    productName,
    productDescription
FROM
    products
WHERE
    productDescription REGEXP '�I�[�v���h�A|�J�\�ȃh�A'
ORDER BY
    SUBSTRING(productName, 6),
    productName
;
