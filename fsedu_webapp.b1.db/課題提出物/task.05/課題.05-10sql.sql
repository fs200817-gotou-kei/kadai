WITH stock AS(
    SELECT
        SUM(quantityInStock) AS 'TotalStock'
    FROM
        products
)

SELECT
    productCode,
    productName,
    productCategory,
    productVendor,
    FORMAT(quantityInStock/TotalStock * 100, 4) AS '在庫に占める割合'
FROM
    products,
    stock
ORDER BY
    在庫に占める割合 DESC
;
