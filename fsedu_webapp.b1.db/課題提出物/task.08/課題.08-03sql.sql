SELECT
    注文年,
    注文月,
    SUM(合計金額) AS '売上合計'
FROM
    (
        SELECT
            YEAR(orderDate) AS '注文年',
            MONTH(orderDate) AS '注文月',
            quantityOrdered * priceEach AS '合計金額'
        FROM
            orders o
            INNER JOIN
                orderdetails ord
            ON  o.orderNumber = ord.orderNumber
        WHERE
            o.status <> 'キャンセル'
        AND o.status <> '係争中'
        GROUP BY
            注文年,
            注文月,
            合計金額
        )salesByOrder
    GROUP BY
        注文年,
        注文月
    ;
