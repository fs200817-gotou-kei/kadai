SELECT
    customerName,
    SUM(amount) AS '�x�����z'
FROM
    customers c
    INNER JOIN
        payments p
    ON
        c.customerNumber = p.customerNumber
WHERE
    customerName = '�A�g���G �O���t�B�b�N'
;
