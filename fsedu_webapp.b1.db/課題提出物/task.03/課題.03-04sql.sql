SELECT
    p.productCode
FROM
    products p
WHERE
    NOT EXISTS(
        SELECT
            ord.productCode
        FROM
            orderdetails ord
        WHERE
            p.productCode = ord.productCode
    )
;
