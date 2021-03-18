SELECT
    COUNT(ord.orderNumber) AS '•Û—¯’†‚Ì’•¶”'
FROM
    orderdetails ord
    INNER JOIN
        orders o
    ON  ord.orderNumber = o.orderNumber
WHERE
    o.status = '•Û—¯'
;
