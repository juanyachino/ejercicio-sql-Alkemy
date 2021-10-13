#Ejercicio 1- Escriba una consulta para saber cuántos estudiantes son de la carrera Mecánica.
SELECT COUNT(*) FROM ESTUDIANTE WHERE carrera = 'Mecanica';

#Ejercicio 2- Escriba una consulta para saber, de la tabla PROFESOR, el salario mínimo de los profesores nacidos en la década del 80.
SELECT MIN(salario) FROM PROFESOR WHERE fecha_nacimiento LIKE '198%';

# Ejercicio 3: diagrama pasajeros 
# Escriba las siguientes consultas:

#Cantidad de pasajeros por país
SELECT p.nombre, count(*) as 'Cantidad de pasajeros' FROM PAIS p 
INNER JOIN PASAJERO pas ON p.idpais = pas.idpais
GROUP BY p.nombre;

#Suma de todos los pagos realizados
SELECT SUM(monto) FROM PAGO;

#Suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales.
SELECT ROUND(SUM(monto),2) FROM PAGO WHERE idpasajero = 232;

#Promedio de los pagos que realizó un pasajero.
SELECT AVG(monto) FROM PAGO WHERE idpasajero = 232;