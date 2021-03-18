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
    FORMAT(quantityInStock/TotalStock * 100, 4) AS '�݌ɂɐ�߂銄��'
FROM
    products,
    stock
ORDER BY
    �݌ɂɐ�߂銄�� DESC
;
