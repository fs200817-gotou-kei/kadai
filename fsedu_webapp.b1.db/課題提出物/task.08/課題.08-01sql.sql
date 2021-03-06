SELECT
    ofc.officeCode,
    ofc.prefecture,
    ofc.city,
    COUNT(distinct e.employeeNumber) AS '従業員数',
    COUNT(ord.orderNumber) AS '注文数合計'
FROM
    offices ofc
    INNER JOIN
        employees e
    ON ofc.officecode = e.officecode
    LEFT JOIN
        customers c
    ON  c.salesRepEmployeeNumber = e.employeeNumber
    LEFT JOIN
        orders ord
    ON  ord.customerNumber = c.customerNumber
GROUP BY
    ofc.officecode,
    ofc.prefecture,
    ofc.city
ORDER BY
    注文数合計 DESC,
    ofc.officeCode
;
