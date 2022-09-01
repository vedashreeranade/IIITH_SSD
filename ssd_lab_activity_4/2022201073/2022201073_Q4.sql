DELIMITER &&
CREATE PROCEDURE details()
BEGIN
DECLARE finished INTEGER DEFAULT 0;
DECLARE c_name VARCHAR(50);
DECLARE c_city VARCHAR(50);
DECLARE c_country VARCHAR(50);
DECLARE c_grade INT;
DECLARE get_cur 
	CURSOR FOR 
		SELECT CUST_NAME, CUST_CITY, CUST_COUNTRY, GRADE FROM customer 
		WHERE AGENT_CODE like 'A00%';
DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = 1;
OPEN get_cur;
get_details:LOOP
	FETCH get_cur INTO c_name, c_city, c_country, c_grade; 
    SELECT c_name, c_city, c_country, c_grade; 
    IF finished = 1 THEN 
		LEAVE get_details;
	END IF;
END LOOP get_details;
CLOSE get_cur;
END &&
DELIMITER ;

CALL details();