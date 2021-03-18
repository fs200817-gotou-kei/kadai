SELECT
    productCode,
    productVendor,
    productName,
    quantityInStock,
    categoryStock,
    CONCAT(
        LPAD(
            FORMAT(
                quantityInStock / categoryStock * 100, 2
            ),
        5, '0'),
        '%') AS 'カテゴリ在庫における商品割合'
FROM
    products p
    INNER JOIN
        (
            SELECT
                pc.productcategory,
                SUM(quantityInStock) AS 'categoryStock'
            FROM
                productcategories pc
                INNER JOIN
                    products p1
                ON  pc.productCategory = p1.productCategory
            GROUP BY
                pc.productCategory
        )category
    ON p.productCategory = category.productCategory
ORDER BY
    productVendor,
    カテゴリ在庫における商品割合 DESC
;
