/* VERIFICACIÓN DE CONTENIDO DE LAS TABLAS */
SELECT * FROM productos;
SELECT * FROM rubros;
SELECT * FROM clientes;
SELECT * FROM ventas;

/* ----- QUERYS DEL ENUNCIADO: */
/* Todos los productos del rubro "librería", creados hoy.  */

SELECT p.nombre, p.fecha_creacion FROM productos p WHERE id_rubro=1 AND fecha_creacion=CURDATE(); /* Opcion 'hardcodeada' con id */

SELECT p.nombre, p.fecha_creacion, r.rubro FROM productos p JOIN rubros r ON p.id_rubro = r.id_rubro WHERE r.rubro LIKE 'Libreria' AND fecha_creacion=DATE(NOW()); /* Opcion de busqueda por rubro */

/* Monto total vendido por cliente (mostrar nombre del cliente y monto).  */

SELECT c.nombre, c.apellido, SUM(v.cantidad * v.precio_unitario) AS monto FROM clientes c JOIN ventas v ON c.id_clientes = v.id_cliente GROUP BY c.id_clientes;

/* Cantidad de ventas por producto. */

SELECT p.nombre, COUNT(v.id_venta) AS cantidad_ventas FROM productos p JOIN ventas v ON p.codigo = v.codigo_producto GROUP BY p.codigo ORDER BY p.nombre;

/* Cantidad de productos diferentes comprados por cliente en el mes actual.  */

SELECT c.nombre, COUNT(DISTINCT v.codigo_producto) AS cantidad_productos FROM clientes c JOIN ventas v ON c.id_clientes = v.id_cliente WHERE MONTH(fecha) = MONTH(NOW()) GROUP BY c.id_clientes;

/* Ventas que tienen al menos un producto del rubro "bazar".  */

SELECT v.id_venta, p.nombre as nombre_producto, v.fecha FROM ventas v JOIN productos p ON v.codigo_producto = p.codigo JOIN rubros r ON p.id_rubro = r.id_rubro WHERE r.rubro LIKE 'Bazar' ORDER BY v.id_venta; /* Opcion de busqueda por rubro */

SELECT v.id_venta, p.nombre as nombre_producto, v.fecha FROM ventas v JOIN productos p ON v.codigo_producto = p.codigo WHERE p.id_rubro = '13' ORDER BY v.id_venta; /* Opcion 'hardcodeada' con id */

/* Rubros que no tienen ventas en los últimos 2 meses. */

SELECT rubro FROM rubros WHERE id_rubro NOT IN (SELECT r.id_rubro FROM rubros r JOIN productos p ON r.id_rubro = p.id_rubro JOIN ventas v ON p.codigo = v.codigo_producto WHERE v.fecha > DATE(NOW() - INTERVAL 2 MONTH));
