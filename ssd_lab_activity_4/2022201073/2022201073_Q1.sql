DELIMITER &&
CREATE PROCEDURE addition (IN n1 INT, IN n2 INT, OUT sum INT)
BEGIN
select n1+n2 INTO sum;
select sum; 
END &&
DELIMITER ;

CALL addition(6,7,@sum);