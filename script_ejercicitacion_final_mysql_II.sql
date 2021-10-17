#1 Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.
SELECT ESTUDIANTE_legajo, COUNT(*) FROM INSCRIPCION GROUP BY ESTUDIANTE_legajo;

#2 Escriba una consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso.
SELECT ESTUDIANTE_legajo, COUNT(*) FROM INSCRIPCION GROUP BY ESTUDIANTE_legajo HAVING count(*) > 1

#3 Escriba una consulta que devuelva la información de los estudiantes que no realizan ningún curso.
SELECT * FROM ESTUDIANTE e WHERE e.legajo NOT IN (SELECT ESTUDIANTE_legajo FROM INSCRIPCION);

#4 Escriba para cada tabla, los index (incluyendo su tipo) que tiene cada una.
SELECT DISTINCT TABLE_NAME , INDEX_NAME, COLUMN_NAME , INDEX_TYPE FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'alkemy_sql';

#5 Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”.
SELECT * FROM ESTUDIANTE e WHERE e.legajo IN (
	SELECT ESTUDIANTE_legajo FROM INSCRIPCION i WHERE i.CURSO_codigo IN (
		SELECT codigo FROM CURSO c WHERE c.PROFESOR_ID IN(
			SELECT id FROM PROFESOR p WHERE p.apellido = 'Pérez' OR p.apellido = 'Paz'
		)
	)
)