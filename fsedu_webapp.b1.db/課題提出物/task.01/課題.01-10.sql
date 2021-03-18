SELECT
    *
FROM
    payments
WHERE
    amount >= 2 * (
        SELECT
            AVG(amount)
        FROM
            payments
    )
;
    
