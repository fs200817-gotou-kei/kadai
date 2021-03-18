SELECT
    productCode,
    productName
FROM
    products p
WHERE
    NOT EXISTS(
        SELECT
            productCode
        FROM
            orderdetails
        WHERE
            p.productCode = productCode
    )
ORDER BY
    productCode
    ;
