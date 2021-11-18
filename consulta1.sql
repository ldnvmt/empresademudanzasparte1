/*   Primera consulta (Empleados de mayor experiencia en la empresa)  */

SELECT ID_ASESOR AS id_del_asesor, NOMBRE_ASESOR AS nombre, APELL_ASESOR AS apellido, 
	   FECHA_INGRESO AS antigüedad
	   FROM asesor
ORDER BY FECHA_INGRESO ASC;