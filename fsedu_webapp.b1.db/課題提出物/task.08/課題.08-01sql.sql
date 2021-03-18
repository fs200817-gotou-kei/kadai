SELECT
    ofc.officeCode,
    ofc.prefecture,
    ofc.city,
    COUNT(distinct e.employeeNumber) AS 'è]ã∆àıêî',
    COUNT(ord.orderNumber) AS 'íçï∂êîçáåv'
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
    íçï∂êîçáåv DESC,
    ofc.officeCode
;
