SELECT
    orderNumber,
    productName,
    priceEach,
    p.MSRP * 0.8,
    MSRP,
    priceEach - buyPrice AS '‘e—˜'
FROM
    products p
    INNER JOIN
        orderdetails ord
    ON  p.productCode = ord.productCode
WHERE
    priceEach <= MSRP * 0.8
ORDER BY
    ‘e—˜ DESC,
    ord.orderNumber
;
