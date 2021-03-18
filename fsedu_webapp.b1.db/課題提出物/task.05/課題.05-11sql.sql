DELIMITER//

CREATE FUNCTION ConverMpgToLp100k(
    miles DECIMAL(10, 2)
) RETURNS DECIMAL(10, 2)

DETERMINISTIC

BEGIN
    DECLARE liters DECIMAL(10, 2);
    SET liters = 235.214583 / miles;
    RETURN(liters);
END//

DELIMITER;

SELECT ConverMpgToLp100k(24);

