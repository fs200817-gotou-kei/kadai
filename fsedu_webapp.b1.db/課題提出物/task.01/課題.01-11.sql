SELECT
    AVG((MSRP - buyPrice) / MSRP) * 100 AS '平均の付加利益率（マークアップ率）'
FROM
    products
    ;
