DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `FIND_CAR`(IN p_car INT)
BEGIN
	SELECT * FROM car WHERE id_car = p_car;
END$$
DELIMITER ;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `DELETE_CAR`(IN P_ID_CAR INT)
BEGIN
	DELETE FROM CAR WHERE ID_CAR = P_ID_CAR;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_TOTAL_CARS`(OUT count_out INT)
BEGIN
	SELECT COUNT(*) into count_out FROM car;
END$$
DELIMITER ;

SET GLOBAL log_bin_trust_function_creators = 1;



USE `springmysql`;
DROP function IF EXISTS `GET_MARCA`;

DELIMITER $$
USE `springmysql`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `GET_MARCA`( P_CAR_ID INT) RETURNS varchar(200) CHARSET utf8mb4
BEGIN
	DECLARE P_MARCA VARCHAR(200);
    SELECT marca into P_MARCA from car where id_car = P_CAR_ID;
    RETURN P_MARCA;
END$$

DELIMITER ;

use springmysql;
insert into `motor` (`ID_MOTOR`, `DESCRIPCION`) values('1','Gasolina');
insert into `motor` (`ID_MOTOR`, `DESCRIPCION`) values('2','Diesel');
insert into `motor` (`ID_MOTOR`, `DESCRIPCION`) values('3','Eléctrico');
insert into `motor` (`ID_MOTOR`, `DESCRIPCION`) values('4','Híbrido');
insert into `motor` (`ID_MOTOR`, `DESCRIPCION`) values('5','Gas GLP');
insert into `motor` (`ID_MOTOR`, `DESCRIPCION`) values('6','Gas GNC');

