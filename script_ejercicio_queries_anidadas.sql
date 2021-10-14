#1 Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.
SELECT COUNT(*) FROM (
	SELECT p.nombre , COUNT(*) FROM PROFESOR p INNER JOIN CURSO c ON c.PROFESOR_ID = p.id WHERE c.turno = 'Noche'
	GROUP BY p.nombre HAVING count(*) > 1) 
AS myquery;

#2 Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.
SELECT * FROM ESTUDIANTE e WHERE e.legajo NOT IN ( 
	SELECT ESTUDIANTE_legajo FROM INSCRIPCION WHERE CURSO_codigo = 105
);

