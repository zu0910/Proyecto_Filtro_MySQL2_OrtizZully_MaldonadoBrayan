use finca_frutal;

-- 1. Registrar nuevos cultivos automáticamente
DELIMITER //
CREATE TRIGGER registro_cultivos
AFTER INSERT ON Cultivos
FOR EACH ROW
BEGIN
    INSERT INTO Tarea (id_empleado, descripción, fecha_asignación)
    VALUES (NEW.id_maquinaria, 'Preparar cultivo', CURDATE());
END //
DELIMITER ;

-- 2.  Trigger que inserta automáticamente una nueva fila en la tabla Tabla frutas 
DELIMITER //
CREATE TRIGGER Tabla_frutas
AFTER INSERT ON frutas
FOR EACH ROW
BEGIN
	INSERT INTO Tabla_frutas(id_fruta, nombre, unidad_medida , precio_venta) 
    VALUES (NEW.id_fruta, 'Manzana Verde', 'kg', 3400);
END // DELIMITER ;

DELIMITER ;

-- 3.  Trigger para actualizar el inventario después de una venta
DELIMITER //
CREATE TRIGGER inventario_venta
AFTER INSERT ON Ventas
FOR EACH ROW
BEGIN
    UPDATE Inventario
    SET cantidad_disponible = cantidad_disponible - NEW.cantidad
    WHERE id_fruta = NEW.id_fruta;
END //
DELIMITER ;

-- 4. Trigger para actualizar el inventario después de una cosecha.

DELIMITER //
CREATE TRIGGER inventario_cosecha
AFTER INSERT ON Cosecha
FOR EACH ROW
BEGIN
    UPDATE Inventario
    SET cantidad_disponible = cantidad_disponible + NEW.cant_cosechada
    WHERE id_fruta = NEW.id_fruta;
END //
DELIMITER ;

-- 5. Tigger para calcular el total de una compra
DELIMITER //
CREATE TRIGGER calcular_total 
BEFORE INSERT ON Compra
FOR EACH ROW
BEGIN 
	SET NEW.total_pagar = NEW.cantidad * (SELECT precio_venta FROM Frutas WHERE id_fruta = NEW.id_proveedor);
END //
DELIMITER ; 

-- 6. Trigger para registrar tareas automáticamente al contratar empleados
DELIMITER //
CREATE TRIGGER tarea_empleado
AFTER INSERT ON Empleados
FOR EACH ROW
BEGIN 
	INSERT INTO Tarea (id_empleado, descripción, fecha_asignación)
    VALUES (NEW.id_empleado, 'Nueva tarea', CURDATE());
END //
DELIMITER ; 

-- 7. Trigger para calcular y actualizar la ganancia final en Ingresos_gastos
DELIMITER //
CREATE TRIGGER ganancia_final
AFTER INSERT ON Ingresos_gastos
FOR EACH ROW
BEGIN
    UPDATE Ingresos_gastos
    SET ganancia_final = NEW.Ingresos - NEW.gastos
    WHERE id_ingreso_gastos = NEW.id_ingreso_gastos;
END //
DELIMITER ;

-- 8. Trigger para aumentar el tamaño del terreno cuando se añadan más cultivos

DELIMITER //
CREATE TRIGGER terreno_tamaño 
AFTER INSERT ON Cultivos
FOR EACH ROW
BEGIN
	UPDATE Terrenos
    SET tamaño = tamaño + NEW.tamaño
    WHERE id_terreno = NEW.id_terreno;
END //
DELIMITER ;

-- 9. Trigger para eliminar el inventario cuando se elimine un cultivo
DELIMITER //
CREATE TRIGGER eliminar_inventario_cultivo
AFTER DELETE ON Cultivos
FOR EACH ROW
BEGIN
    DELETE FROM Inventario WHERE id_fruta = OLD.id_fruta;
END //
DELIMITER ;

-- 10. Trigger para calcular el precio unitario de una fruta en una venta

DELIMITER //
CREATE TRIGGER calculate_precio_unitario
AFTER INSERT ON Ventas
FOR EACH ROW
BEGIN
    DECLARE precio INT;
    SELECT precio_venta INTO precio FROM Frutas WHERE id_fruta = NEW.id_fruta;
    UPDATE Ventas
    SET precio_unitario = precio
    WHERE id_venta = NEW.id_venta;
END //
DELIMITER ;

-- 11. Trigger para actualizar el total de la venta en la tabla de ventas

DELIMITER //
CREATE TRIGGER total_venta
AFTER INSERT ON Ventas
FOR EACH ROW
BEGIN
    DECLARE total INT;
    SET total = NEW.cantidad * NEW.precio_unitario;
    UPDATE Ventas
    SET subtotal = total
    WHERE id_venta = NEW.id_venta;
END //
DELIMITER ;

-- 12. Trigger para eliminar un proveedor si no hay compras asociadas

DELIMITER //
CREATE TRIGGER eliminar_proveedor
AFTER DELETE ON Proveedores
FOR EACH ROW
BEGIN
    DELETE FROM Proveedores WHERE id_proveedor = OLD.id_proveedor;
END //
DELIMITER ;

-- 13. Trigger para eliminar todos los registros de ventas relacionadas con una fruta eliminada

DELIMITER //
CREATE TRIGGER eliminar_venta
AFTER DELETE ON Frutas
FOR EACH ROW
BEGIN
    DELETE FROM Ventas WHERE id_fruta = OLD.id_fruta;
END //
DELIMITER ;

-- 14. Trigger para actualizar la cantidad en inventario cuando se elimina una venta

DELIMITER //
CREATE TRIGGER actualizar_inventario
AFTER DELETE ON Ventas
FOR EACH ROW
BEGIN
    UPDATE Inventario
    SET cantidad_disponible = cantidad_disponible + OLD.cantidad
    WHERE id_fruta = OLD.id_fruta;
END //
DELIMITER ;

-- 15. Trigger para eliminar todos los registros de cosecha cuando se elimina un cultivo

DELIMITER //
CREATE TRIGGER eliminar_cose
AFTER DELETE ON Cultivos
FOR EACH ROW
BEGIN
    DELETE FROM Cosecha WHERE id_cultivo = OLD.id_cultivo;
END //
DELIMITER ;

-- 16. Trigger para eliminar registros de bodega cuando un insumo es eliminado

DELIMITER //
CREATE TRIGGER eliminar_b_r
AFTER DELETE ON Insumos
FOR EACH ROW
BEGIN
    DELETE FROM Bodega WHERE id_insumo = OLD.id_insumo;
END //
DELIMITER ;

-- 17. Trigger para eliminar un cliente cuando se elimina su cuenta de login

DELIMITER //
CREATE TRIGGER eliminar_cliente
AFTER DELETE ON Login
FOR EACH ROW
BEGIN
    DELETE FROM Clientes WHERE id_login = OLD.id_login;
END //
DELIMITER ;

-- 18. Trigger para eliminar un producto de inventario cuando se elimina la fruta asociada
DELIMITER //
CREATE TRIGGER eliminar_p_i
AFTER DELETE ON Frutas
FOR EACH ROW
BEGIN
    DELETE FROM Inventario WHERE id_fruta = OLD.id_fruta;
END //
DELIMITER ;

-- 19. Trigger para eliminar un cultivo cuando se elimina el terreno asociado

DELIMITER //
CREATE TRIGGER eliminar_culti
AFTER DELETE ON Terrenos
FOR EACH ROW
BEGIN
    DELETE FROM Cultivos WHERE id_terreno = OLD.id_terreno;
END //
DELIMITER ;

-- 20. Trigger para actualizar la cantidad disponible en inventario cuando se realiza una venta

DELIMITER //
CREATE TRIGGER actualizar_inve_v
AFTER INSERT ON Ventas
FOR EACH ROW
BEGIN
    UPDATE Inventario
    SET cantidad_disponible = cantidad_disponible - NEW.cantidad
    WHERE id_fruta = NEW.id_fruta;
END //
DELIMITER ;