SELECT
    orderNumber,
    productName,
    buyPrice,
    priceEach
FROM
    orderdetails ord
    INNER JOIN
        products p
    ON  ord.productCode = p.productCode
WHERE
     priceEach >= buyPrice * 2.5
ORDER BY
    orderNumber
;
