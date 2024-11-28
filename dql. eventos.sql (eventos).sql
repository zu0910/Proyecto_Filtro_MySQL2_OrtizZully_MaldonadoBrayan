use finca_frutal;

-- 1. general reporte mensual de ventas

CREATE EVENT reporte_mensual 
ON SCHEDULE EVERY 1 MONTH
STARTS '2023-11-02 10:00' 
DO INSERT INTO reportes_ventas (fecha_reporte, total_ventas)
	SELECT CURDATE(), SUM(monto) FROM ventas WHERE MONTH(fecha_venta) = MONTH(CURDATE()) - 1;

-- 2. Actualizar inventario al final del dia

CREATE EVENT actualizar_inventario
ON SCHEDULE EVERY 1 DAY 
STARTS '2023-11-28 23:59:00'
DO
	UPDATE inventario SET cantidad_disponible = cantidad_disponible -
    (SELECT SUM(cantidad) FROM ventas WHERE DATE(fecha_venta) = CURDATE());
    
-- 3. Actualizar salario de empleados

CREATE EVENT actualizar_salario
ON SCHEDULE EVERY 1 MONTH
STARTS '2023-11-28 00:00:00'
DO
	UPDATE empleados SET salario = salario * 1.05; -- Aumenta el salario un 5% cada mes
    
-- 4. Eliminar registros antiguos de ventas 

CREATE EVENT Eliminar_ant_regis
ON SCHEDULE EVERY 1 MONTH
STARTS '2023-11-28 00:00:00'
DO
	DELETE FROM ventas WHERE fecha_venta < CURDATE() - INTERVAL 6 MONTH;
    
-- 5. Revision de inventario y actualización

CREATE EVENT Revision_Inventario
ON SCHEDULE EVERY 1 MONTH
STARTS '2023-11-28 23:59:00'
DO
	UPDATE inventario SET cantidad_disponible = cantidad_inicial 
    WHERE cantidad_disponible < cantidad_minima;
    
-- 6. Generar reportes de ingresos y gastos 

CREATE EVENT Generar_reporte
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-30 23:59:59'
DO
  INSERT INTO reportes_financieros (fecha_reporte, total_ingresos, total_gastos)
  SELECT CURDATE(), SUM(ingreso), SUM(gasto) FROM transacciones WHERE MONTH(fecha_transaccion) = MONTH(CURDATE());
    
-- 7. Revisar las cuentas que hace falta por cobrar 

CREATE EVENT cobrar_cuentas
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-30 23:59:59'
DO
  SELECT cliente_id, SUM(monto) FROM ventas WHERE estado_pago = 'pendiente' GROUP BY cliente_id;
  
-- 8. Revisar estado de maquinaria

CREATE EVENT revisar_estado_maquinaria
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-12-01 00:00:00'
DO
  UPDATE maquinaria SET estado = 'Revisado'
  WHERE fecha_ultimo_mantenimiento < CURDATE() - INTERVAL 30 DAY;
  
-- 9. Actualizar estado de cultivos 

CREATE EVENT actualizar_estado_cultivos
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-12-01 00:00:00'
DO
  UPDATE cultivos SET estado = 'En crecimiento' 
  WHERE estado = 'Sembrado' AND fecha_siembra < CURDATE() - INTERVAL 30 DAY;

-- 10. Eliminar registros antiguos de clientes 

CREATE EVENT eliminar_clientes
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-12-01 00:00:00'
DO
  DELETE FROM clientes WHERE id_cliente NOT IN (SELECT DISTINCT id_cliente FROM ventas WHERE fecha_venta > CURDATE() - INTERVAL 12 MONTH);

-- 11 listar proveedores 

CREATE EVENT ver_proveedores
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-12-10 00:00:00'
DO
  SELECT proveedor_id, nombre, estado FROM proveedores WHERE estado = 'pendiente';
  
-- 12. Generar reporte semanal de ventas

CREATE EVENT reporte_semanal
ON SCHEDULE EVERY 1 WEEK
STARTS '2024-11-27 00:00:00'
DO
  INSERT INTO reportes_ventas (fecha_reporte, total_ventas)
  SELECT CURDATE(), SUM(monto) FROM ventas WHERE WEEK(fecha_venta) = WEEK(CURDATE()) - 1;
  
-- 13. Actualizar estado de las tareas de empleados 

CREATE EVENT tareas_empleados
ON SCHEDULE EVERY 1 DAY
STARTS '2024-11-28 00:00:00'
DO
  UPDATE tareas_empleados SET estado = 'Nuevo día' WHERE estado = 'Pendiente';
  
-- 14. Listar el reporte de cultivo

CREATE EVENT generar_reporte_culti
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-12-01 00:00:00'
DO
  INSERT INTO reportes_cultivos (fecha_reporte, total_cosecha)
  SELECT CURDATE(), SUM(cantidad_cosechada) FROM cultivos WHERE MONTH(fecha_cosecha) = MONTH(CURDATE()) - 1;
  
-- 15. Actualizar fechas de mantenimiento de maquinaria

CREATE EVENT fecha_manteni
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-12-01 00:00:00'
DO
  UPDATE maquinaria SET fecha_ultimo_mantenimiento = CURDATE() WHERE estado = 'Operativo';
  
-- 16. Eliminar registros de compras antiguas 

CREATE EVENT eliminar_comprar
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-12-01 00:00:00'
DO
  DELETE FROM compras WHERE fecha_compra < CURDATE() - INTERVAL 12 MONTH;
  
-- 17. Actualizr la cantidad de productos al final del dia

CREATE EVENT cant_product
ON SCHEDULE EVERY 1 DAY
STARTS '2024-11-28 23:59:00'
DO
  UPDATE inventario SET cantidad_disponible = cantidad_disponible - (SELECT SUM(cantidad) FROM ventas WHERE DATE(fecha_venta) = CURDATE());

-- 18. generar reporte de compras al mes 

CREATE EVENT reporte_compra
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-11-30 23:59:00'
DO
  INSERT INTO reportes_compras (fecha_reporte, total_compras)
  SELECT CURDATE(), SUM(monto) FROM compras WHERE MONTH(fecha_compra) = MONTH(CURDATE());
  
-- 19. Eliminar registro de ventas despues de 6 meses

CREATE EVENT Eliminar_ventas
ON SCHEDULE EVERY 1 MONTH
STARTS '2024-12-01 00:00:00'
DO
  DELETE FROM ventas WHERE fecha_venta < CURDATE() - INTERVAL 6 MONTH;
  
-- 20. Actualizar estado de tareas de empleado al final de la jornada
CREATE EVENT act_tarea_emp
ON SCHEDULE EVERY 1 DAY
STARTS '2024-11-28 23:59:00'
DO
  UPDATE tareas_empleados SET estado = 'Completado' WHERE estado = 'Pendiente' AND fecha_vencimiento < CURDATE();