/* # EJERCICIO 1
Emitir un listado que incluya a los superhéroes registrados. El listado debe estar ordenado
por nombre del superhéroe de forma descendente y responder al formato de la imagen.

RESULTADO 1
SELECT COD_HEROE AS "CODIGO HEROE",
nomb_heroe AS "NOMBRE HEROE", 
nomb_universo AS "UNIVERSO"
FROM superheroe a JOIN universo b ON (a.COD_UNIVERSO = b.COD_UNIVERSO)
ORDER BY 2 DESC; */

/* EJERCICIO 2
Emitir un listado de los poderes, considerando el origen y el código del superhéroe que
registra ese poder. La salida debe responder al formato de la imagen y debe estar ordenada
por nombre del poder de forma ascendente.

RESULTADO 2
SELECT nomb_poder AS "PODER", nomb_origen AS "ORIGEN", cod_heroe AS "CODIGO HEROE"
FROM poder a JOIN heroe_poder b ON (a.cod_poder = b.cod_poder)
JOIN origen c ON(b.cod_origen = c.cod_origen)
ORDER BY 1 DESC */

/* EJERCICIO 3
NECESITA FUNCIONES DE GRUPO, POR VER LA PRÓXIMA SEMANA.*/

/* ¿CUÁL ES EL NOMBRE DE EL O LOS UNIVERSO/S DE LAS PELÍCULAS CUYO AÑO DE APARICIÓN ESTÉ DENTRO DEL PERIODO 2000 Y 2020? */

/* UNIVERSO: TIENE NOMBRE DE UNIVERSO
PELICULA: TIENE EL AÑO DE APARICIÓN */

SELECT DISTINCT nomb_universo 
FROM pelicula a JOIN universo b ON(a.cod_universo = b.cod_universo)
WHERE year_aparicion BETWEEN 200 AND 2020 