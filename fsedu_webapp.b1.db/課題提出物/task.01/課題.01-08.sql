SELECT
    productCategory,
    count(productCode) AS 'è§ïiêî'
FROM
    products
GROUP BY
    productCategory
ORDER BY
    count(*) DESC
    ;
