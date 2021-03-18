CREATE VIEW overview AS
SELECT
    c.customerNumber,
    c.customerName,
    SUM(
        od.quantityOrdered * od.priceEach
    ) totalValue
FROM
    customers c,
    orders o,
    orderdetails od
WHERE
    c.customerNumber = o.customerNumber
AND o.orderNumber = od.orderNumber
AND o.status = '������'
GROUP BY
    c.customerNumber
;
