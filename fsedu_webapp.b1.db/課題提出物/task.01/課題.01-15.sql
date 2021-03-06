SELECT
    orderNumber,
    productCode,
    SUM(quantityOrdered * priceEach) AS '注文金額'
FROM
    orderdetails
GROUP BY
    orderNumber,
    productCode
HAVING
    SUM(quantityOrdered * priceEach) >= 500000
ORDER BY
    注文金額
;
