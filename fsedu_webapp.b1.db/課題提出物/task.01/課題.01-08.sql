SELECT
    productCategory,
    count(productCode) AS '���i��'
FROM
    products
GROUP BY
    productCategory
ORDER BY
    count(*) DESC
    ;
