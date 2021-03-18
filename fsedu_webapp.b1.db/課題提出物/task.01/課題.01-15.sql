SELECT
    orderNumber,
    productCode,
    SUM(quantityOrdered * priceEach) AS '�������z'
FROM
    orderdetails
GROUP BY
    orderNumber,
    productCode
HAVING
    SUM(quantityOrdered * priceEach) >= 500000
ORDER BY
    �������z
;
