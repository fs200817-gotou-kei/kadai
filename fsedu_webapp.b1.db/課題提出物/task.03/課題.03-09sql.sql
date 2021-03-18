SELECT
    ord.orderNumber,
    p.productName,
    ord.priceEach,
    p.buyPrice,
    (ord.priceEach - p.buyPrice) / ord.priceEach AS '—˜‰v—¦'
FROM
    products p,
    orderdetails ord,
    orders o
WHERE
    p.productCode = ord.productCode
AND ord.orderNumber = o.orderNumber
AND (priceEach - buyPrice) / priceEach >= 0.6
ORDER BY
    —˜‰v—¦ DESC,
    o.orderNumber
    ;
