USE tienda_zapatillas;

-- añadir columnas --

ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR (45) NOT NULL, 
ADD COLUMN talla INT NOT NULL;

SELECT *
FROM zapatillas;

-- modificar una columna--

ALTER TABLE empleados
MODIFY COLUMN salario FLOAT NOT NULL;

SELECT *
FROM empleados;

-- borrar registros de una tabla (no es lo que pide el ejercicio) --

DELETE FROM clientes
WHERE pais;

-- borrar columna país --

ALTER TABLE clientes
DROP COLUMN pais;

SELECT *
FROM clientes;

-- añadir columna--

ALTER table facturas
ADD COLUMN total FLOAT;

SELECT *
FROM facturas;

-- Introducir datos --
INSERT INTO zapatillas VALUES
(1, "XQYUN", "Negro", "Nike", 42),
(2, "UOPMN", "Rosas", "Nike", 39),
(3,"OPYNT", "Verdes", "Adidas", 35);

SELECT *
FROM zapatillas;

INSERT INTO empleados VALUES
(1, "Laura", "Alcobendas", 25987, "2010-09-03"),
(2, "Maria", "Sevilla", "0" , "2001-04-11"),
(3, "Ester", "Oviedo", 30165.98, "2000-11-29");

SELECT *
FROM empleados;

INSERT INTO clientes VALUES
(1, "Monica", "1234567289", "monica@email.com", "Calle Felicidad", "Móstoles", "Madrid", 28176),
(2, "Lorena", "289345678", "lorena@email.com", "Calle Alegria", "Barcelona", "Barcelona", 12346),
(3, "Carmen", "298463759", "carmen@email.com", "Calle Color", "Vigo", "Pontevedra", 23456);

SELECT*
FROM clientes;

INSERT INTO facturas VALUES
(1, 123, "2001-12-11", 1, 2, 1, 54.98),
(2, 1234, "2005-05-23",1, 2, 3, 89.91),
(3,12345, "2015-09-18", 2, 3, 3, 76.23);
SELECT*
FROM facturas;

-- Modificar las tablas--
UPDATE zapatillas
SET color = "Amarillo"
WHERE id_zapatilla =2;

SELECT*
FROM zapatillas;

UPDATE empleados
SET tienda = "A Coruña"
WHERE id_empleado =1;

UPDATE clientes
SET numero_telefono = "123456728"
WHERE id_cliente =1;

UPDATE facturas
SET total = 89.91
WHERE id_factura  = 2;







