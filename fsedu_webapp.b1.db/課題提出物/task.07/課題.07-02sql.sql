    SELECT
        ov.customerNumber,
        ov.customerName,
        ov.totalValue
    FROM
        overview ov
    WHERE
        5 > (
            SELECT
                COUNT(customerNumber)
            FROM
                overview ov2
            WHERE
                ov.totalValue < ov2.totalValue
        )
    ORDER BY
        totalValue DESC

;
