/*   Segunda consulta (Ciudad dónde más solicitan mudanzas, cantidad, y avalúo)  */

SELECT 
	SERVICIO_MUDANZA.CIUDAD_MUDANZA AS CIUDAD,
	sum(DF.CANTIDAD_ART) as CANTIDAD, 
	sum(SERVICIO_MUDANZA.AVALUO_MUDANZA) AS avaluo
	FROM DETALLE_FACTURA DF
	INNER JOIN SERVICIO_MUDANZA ON DF.ID_MUDANZA = SERVICIO_MUDANZA.ID_MUDANZA
	WHERE DF.ID_MUDANZA = SERVICIO_MUDANZA.ID_MUDANZA
	GROUP BY
		SERVICIO_MUDANZA.CIUDAD_MUDANZA 
	ORDER BY sum(DF.CANTIDAD_ART) DESC
