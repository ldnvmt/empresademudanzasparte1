/*   Tercera consulta (Cantidad de personas que trabajan en la matriz y sucursales)  */

SELECT 
	tienda.DESCRIPCION_TIENDA AS tipo_de_tienda, tienda.CIUDAD_TIENDA AS ciudad_tienda,
	COUNT(ASESOR.ID_ASESOR) AS CANTIDAD_EMPLEADOS
	FROM asesor
	INNER JOIN tienda ON tienda.ID_TIENDA = asesor.ID_TIENDA
	GROUP BY tienda.DESCRIPCION_TIENDA, tienda.CIUDAD_TIENDA
ORDER BY CANTIDAD_EMPLEADOS DESC;