DELIMITER &&
CREATE PROCEDURE names_using_city (IN city VARCHAR(10))
BEGIN
SELECT CUST_NAME from customer where WORKING_AREA = city;
END &&
DELIMITER ;

CALL names_using_city('Bangalore');