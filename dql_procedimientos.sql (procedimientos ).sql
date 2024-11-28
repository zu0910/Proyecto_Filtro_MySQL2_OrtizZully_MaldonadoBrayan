Use finca_frutal;

-- Procedimientos 

-- 1. Inserar dato en la tabla terreno 
delimiter //
create procedure insertar_terreno(
	in id_terreno INT, 
    in tamaño INT
)
begin
    insert into terrenos (id_terreno, tamaño)
    values (id_terreno, tamaño);
end //
delimiter ;
-- drop procedure insertar_terreno;
call insertar_terreno(4, 15);
select * from terrenos;

-- 2. Inserar dato en la tabla Frutas

delimiter //
create procedure insertar_Frutas( 
	in id_fruta INT, 
    in nombre VARCHAR (250),
    in unidad_medida VARCHAR(35), 
    in precio_venta INT
)
begin
    insert into Frutas (id_fruta, nombre, unidad_medida, precio_venta)
    values (id_fruta, nombre, unidad_medida, precio_venta);
end //
delimiter ;

call insertar_Frutas(8, 'Pera', 'kg', 3000);
select * from Frutas;

-- 3. Inserar dato en la tabla Proveedores

delimiter //
create procedure insertar_proveedores( 
	id_proveedor INT,
    nombre VARCHAR (255),
    contacto INT,
    tipo_suministro VARCHAR (255)
)
begin
    insert into proveedores (id_proveedor,nombre ,contacto ,tipo_suministro)
    values (id_proveedor,nombre ,contacto ,tipo_suministro);
end //
delimiter ;
-- drop procedure insertar_proveedores;
call insertar_proveedores(9, 'hidranatural', 313987073, 'cuidados' );
select * from proveedores;

-- 4. Inserar dato en la tabla Compra

delimiter //
create procedure insertar_compra( 
	id_compra INT, 
    fecha DATE,
    id_proveedor INT, 
    total_pagar INT, 
    tipo_producto_compra varchar(255),
    cantidad INT
)
begin
    insert into compra (id_compra , fecha ,id_proveedor, total_pagar , tipo_producto_compra,cantidad )
    values (id_compra , fecha ,id_proveedor, total_pagar , tipo_producto_compra,cantidad);
end //
delimiter ;

call insertar_compra(51, '2023-12-10', 5, 1200000, 'Fertilizantes', 1);
select * from compra;

-- 4. Inserar dato en la tabla Compra

delimiter //
create procedure insertar_compra( 
	id_compra INT, 
    fecha DATE,
    id_proveedor INT, 
    total_pagar INT,
    tipo_producto_compra varchar(255),
    cantidad INT
)
begin
    insert into compra (id_compra , fecha ,id_proveedor, total_pagar , tipo_producto_compra,cantidad )
    values (id_compra , fecha ,id_proveedor, total_pagar , tipo_producto_compra,cantidad);
end //
delimiter ;

call insertar_compra(51, '2023-12-10', 5, 1200000, 'Fertilizantes', 1);
select * from compra;

-- 5. Insertar un nuevo cliente

DELIMITER //
CREATE PROCEDURE Insertar_Cliente(
	id_cliente INT,
    nombre1 VARCHAR (255),
    nombre2 VARCHAR (255),
    apellido1 VARCHAR (255),
    apellido2 VARCHAR (255),
    contacto VARCHAR(255),
    id_login INT
)
BEGIN
    INSERT INTO Clientes (id_cliente,nombre1,nombre2 ,apellido1 ,apellido2 ,contacto ,id_login )
    VALUES (id_cliente,nombre1,nombre2 ,apellido1 ,apellido2 ,contacto ,id_login );
END //
DELIMITER ;

call Insertar_Cliente (51, 'Brayam', 'Stiven', 'Gomez', 'Martinez', 'brayamgomez@example.com', 50);

select * from Clientes;

-- 6. Actualizar el estado de una máquina

DELIMITER //
CREATE PROCEDURE Actualizar_Estado_Maquina(
	in id_estado_maquinaria_nuevo INT, 
    in nuevo_estado VARCHAR(20)
)
BEGIN
    UPDATE estado_maquinaria
    SET estado = nuevo_estado
    WHERE id_estado_maquinaria = id_estado_maquinaria_nuevo;
END //
DELIMITER ;
-- drop procedure Actualizar_Estado_Maquina;
call Actualizar_Estado_Maquina(1, 'En uso');
select * from estado_maquinaria;

-- 7. Insertar un nuevo insumo

DELIMITER //
CREATE PROCEDURE Insertar_Insumos(
	id_insumo INT,
    id_tipo_insumo INT,
    nombre VARCHAR (255),
    id_compra INT
)
BEGIN
    INSERT INTO Insumos (id_insumo,id_tipo_insumo,nombre,id_compra)
    VALUES (id_insumo,id_tipo_insumo,nombre,id_compra);
END //
DELIMITER ;

call Insertar_Insumos (49, 1, 'Fertilizante A', 1);
select * from insumos;

-- 8. Actualizar precio de venta de una fruta
DELIMITER //
CREATE PROCEDURE Actualizar_Precio_Fruta(id INT, nuevo_precio INT)
BEGIN
    UPDATE Frutas
    SET precio_venta = nuevo_precio
    WHERE id_fruta = id;
END //
DELIMITER ;
call Actualizar_Precio_Fruta(1, 5000);
select * from Frutas;

-- 9. Insertar una nueva venta

DELIMITER //
CREATE PROCEDURE Insertar_Venta(
	id_venta INT,
    id_cliente INT,
    id_empleado INT,
    id_fruta INT,
    fecha DATE,
    cantidad INT, 
    subtotal INT,
    precio_unitario INT
)
BEGIN
    INSERT INTO ventas (id_venta,id_cliente,id_empleado ,id_fruta,fecha ,cantidad , subtotal ,precio_unitario )
    VALUES (id_venta,id_cliente,id_empleado ,id_fruta,fecha ,cantidad , subtotal ,precio_unitario);
END //
DELIMITER ;

call Insertar_Venta (51, 1, 20, 1, '2023-01-10', 90, 335000, 50);
select * from ventas;

-- 10. Actualizar cantidad de inventario

DELIMITER //
CREATE PROCEDURE Actualizar_Inventario(id INT, nueva_cantidad INT)
BEGIN
    UPDATE Inventario
    SET cantidad_disponible = nueva_cantidad
    WHERE id_fruta = id;
END //
DELIMITER ;

call Actualizar_Inventario(1,3000);

select * from inventario;

-- 11. Insertar un nuevo empleado
DELIMITER //
CREATE PROCEDURE Insertar_Empleado(
	id_empleado  INT ,
    nombre1 VARCHAR (255),
    nombre2 VARCHAR (255),
    apellido1 VARCHAR (255),
    apellido2 VARCHAR (255),
    id_cargo INT,
    id_login INT,
    fecha_contratación DATE
)
BEGIN
    INSERT INTO Empleados (id_empleado,nombre1,nombre2,apellido1,apellido2,id_cargo,id_login,fecha_contratación)
    VALUES (id_empleado,nombre1,nombre2,apellido1,apellido2,id_cargo,id_login,fecha_contratación);
END //
DELIMITER ;
call Insertar_Empleado (51, 'Mario', 'Andrés', 'Pérez', 'Rodríguez', 1, 15, '2022-01-10');
select * from empleados;

-- 12. Actualizar la fecha de cosecha

DELIMITER //
CREATE PROCEDURE Actualizar_Fecha_Cosecha(id INT, nueva_fecha DATE)
BEGIN
    UPDATE Cosecha
    SET fecha = nueva_fecha
    WHERE id_cultivo = id;
END //
DELIMITER ;

call Actualizar_Fecha_Cosecha (1, '22-01-01');

select * from cosecha;

-- 13. Insertar una nueva tarea
DELIMITER //
CREATE PROCEDURE Insertar_Tarea(
	id_tarea INT,
    descripción VARCHAR(255),
    id_empleado INT,
    fecha_asignación DATE
)
BEGIN
    INSERT INTO Tarea (id_tarea,descripción ,id_empleado ,fecha_asignación)
    VALUES (id_tarea,descripción ,id_empleado ,fecha_asignación);
END //
DELIMITER ;
call Insertar_Tarea (41, 'Revisar y mantener las máquinas de riego', 5, '2023-03-15');
select * from tarea;

-- 14.  Actualizar costo total de una compra
DELIMITER //
CREATE PROCEDURE Actualizar_Costo_Compra(id INT, nuevo_total INT)
BEGIN
    UPDATE compra
    SET total_pagar = nuevo_total
    WHERE id_compra = id;
END //
DELIMITER ;
call Actualizar_Costo_Compra(1,100000);
select * from compra;

-- 15. Obtener la lista de cultivos por terreno
DELIMITER //
CREATE PROCEDURE CultivosPorTerreno(id_terreno1 INT)
BEGIN
    SELECT id_cultivo, Tipo, Cosecha_esperada
    FROM Cultivos
    WHERE id_terreno = id_terreno1;
END //
DELIMITER ;
select * from cultivos;
call CultivosPorTerreno(1);

-- 16 Listar todos los clientes

DELIMITER //
CREATE PROCEDURE ListarClientes()
BEGIN
    SELECT id_cliente,nombre1,nombre2 ,apellido1 ,apellido2 ,contacto ,id_login
    FROM Clientes
    ORDER BY id_cliente,nombre1,nombre2 ,apellido1 ,apellido2 ,contacto ,id_login;
END //
DELIMITER ;
-- drop procedure ListarClientes;
call ListarClientes();

-- 17. Listar todas las máquinas

DELIMITER //
CREATE PROCEDURE ListarMaquinas()
BEGIN
    SELECT id_maquinaria,id_estado_maquinaria ,tipo , Marca ,fecha_ultimo_mantenimiento ,id_compra ,id_empleado 
    FROM maquinaria
    ORDER BY id_maquinaria,id_estado_maquinaria ,tipo , Marca ,fecha_ultimo_mantenimiento ,id_compra ,id_empleado ;
END //
DELIMITER ;

call ListarMaquinas();

-- 18. Listar todos los insumos

DELIMITER //
CREATE PROCEDURE ListarInsumos()
BEGIN
    SELECT id_insumo,id_tipo_insumo,nombre,id_compra
    FROM Insumos
    ORDER BY id_insumo,id_tipo_insumo,nombre,id_compra;
END //
DELIMITER ;

call ListarInsumos();

-- 19. Listar todas las ventas

DELIMITER //
CREATE PROCEDURE ListarVentas()
BEGIN
    SELECT id_venta,id_cliente,id_empleado ,id_fruta,fecha ,cantidad , subtotal ,precio_unitario
    FROM Ventas
    ORDER BY fecha DESC;
END //
DELIMITER ;
call ListarVentas();

-- 20. Listar todos los cultivos
DELIMITER //
CREATE PROCEDURE ListarCultivos()
BEGIN
    SELECT id_cultivo ,tipo ,tamaño ,id_fruta ,id_terreno ,cosecha_esperada ,id_maquinaria
    FROM Cultivos
    ORDER BY id_cultivo ,tipo ,tamaño ,id_fruta ,id_terreno ,cosecha_esperada ,id_maquinaria;
END //
DELIMITER ;
call ListarCultivos();