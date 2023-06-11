delimiter $$

CREATE DEFINER=`root`@`localhost` FUNCTION `CalcularSumaTotalVentas`() RETURNS decimal(10,2)
    READS SQL DATA
BEGIN
    DECLARE TotalVentas DECIMAL(10,2);
    SELECT SUM(monto) INTO TotalVentas FROM compra;
    RETURN TotalVentas;
END

$$

delimiter $$
CREATE DEFINER=`root`@`localhost` FUNCTION `AvgValoraciones`() RETURNS int
    READS SQL DATA
BEGIN
	Declare resultado int;
    select avg(valoracion)into resultado from lifegame.valoracion;
	RETURN resultado;
END
$$

Select CalcularSumaTotalVentas();
Select AvgValoraciones();
