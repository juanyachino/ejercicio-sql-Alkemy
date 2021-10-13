#Escriba la siguiente información:
# Nombre, apellido y cursos que realiza cada estudiante
SELECT e.nombre,e.apellido, c.nombre AS 'Curso que realiza' FROM ESTUDIANTE e 
INNER JOIN INSCRIPCION ON legajo = ESTUDIANTE_legajo
INNER JOIN CURSO c ON c.codigo = CURSO_codigo

# Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
SELECT e.nombre,e.apellido, c.nombre AS 'Curso que realiza' FROM ESTUDIANTE e 
INNER JOIN INSCRIPCION ON legajo = ESTUDIANTE_legajo
INNER JOIN CURSO c ON c.codigo = CURSO_codigo
ORDER BY c.nombre

# Nombre, apellido y cursos que dicta cada profesor
SELECT p.nombre ,p.apellido, c.nombre AS 'Curso que dicta' FROM PROFESOR p 
INNER JOIN CURSO c ON p.id = c.PROFESOR_id

# Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
SELECT p.nombre ,p.apellido, c.nombre AS 'Curso que dicta' FROM PROFESOR p 
INNER JOIN CURSO c ON p.id = c.PROFESOR_id
ORDER BY c.nombre

# Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
SELECT c.nombre , c.cupo - (SELECT COUNT(*) FROM INSCRIPCION WHERE c.codigo = CURSO_codigo) 
AS 'Cupo disponible' FROM CURSO c

# Cursos cuyo cupo disponible sea menor a 10
SELECT c.nombre , c.cupo - (SELECT COUNT(*) FROM INSCRIPCION WHERE c.codigo = CURSO_codigo) 
AS 'Cupo disponible' FROM CURSO c WHERE 'Cupo disponible' < 10