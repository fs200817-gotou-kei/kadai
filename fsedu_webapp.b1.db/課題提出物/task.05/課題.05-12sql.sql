DELIMITER//
CREATE PROCEDURE UpdateMsrpByRatio(
    IN catgegoryName VARCHAR(255),
    IN ratio DECIMAL(20, 2)
) BEGIN
UPDATE
    products
SET
    MSRP = MSRP * ratio
WHERE
    productCategory = categoryName;
END//

DELIMITER;

CALL UpdateMsrpByRatio('�I�[�g�o�C', 1.03);
