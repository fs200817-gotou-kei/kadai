SELECT
    orderNumber,
    productCode,
    SUM(quantityOrdered * priceEach) AS 'íçï∂ã‡äz'
FROM
    orderdetails
GROUP BY
    orderNumber,
    productCode
HAVING
    SUM(quantityOrdered * priceEach) >= 500000
ORDER BY
    íçï∂ã‡äz
;
