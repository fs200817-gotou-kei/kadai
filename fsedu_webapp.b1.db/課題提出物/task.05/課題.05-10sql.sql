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
    FORMAT(quantityInStock/TotalStock * 100, 4) AS 'ç›å…Ç…êËÇﬂÇÈäÑçá'
FROM
    products,
    stock
ORDER BY
    ç›å…Ç…êËÇﬂÇÈäÑçá DESC
;
