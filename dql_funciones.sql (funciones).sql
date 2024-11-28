use finca_frutal;

-- 1 Calcular el rendimiento promedio por hectárea de cada cultivo 
drop function if exists rendimiento_promedio;
delimiter //
create function rendimiento_promedio(id_cultivo int) 
returns int deterministic
begin
    declare rendimiento int;
    SELECT AVG(cant_cosechada / tamaño) INTO rendimiento
    FROM Cosecha c
    JOIN Cultivos cu ON c.id_cultivo = cu.id_cultivo
    WHERE cu.id_cultivo = id_cultivo
    GROUP BY cu.id_cultivo;  
    RETURN rendimiento;
end //
delimiter ;
select rendimiento_promedio(4);

-- 2 Total de tareas que fueron asignadas
drop function if exists tarea_empleado;
delimiter //
create function tarea_empleado(id_empleado int)
returns int deterministic
begin
	declare total int;
    select count(*)
    into total
    from tarea t join empleados e on t.id_empleado = e.id_empleado
    where id_empleado = t.id_empleado;
    return total;
end //
delimiter ; 
select tarea_empleado(3) as tarea_empleado;

-- 3 Total de ganancia producida por un empleado en específico
drop function if exists ventas_empleado;
delimiter //
create function ventas_empleado(id_empleado INT)
returns decimal(10,2)
deterministic
begin
    declare total decimal(10,2);
    select sum(subtotal) into total
    from ventas
    where ventas.id_empleado = id_empleado;
    return total;
end //
delimiter ;
select ventas_empleado(40); 

-- 4 Buscar clientes por su primer nombre
drop function if exists buscar_cliente_por_nombre;
delimiter //
create function buscar_cliente_por_nombre(nombre VARCHAR(255))
returns int
deterministic
begin
    declare cliente_id INT;
    select id_cliente INTO cliente_id
    from Clientes
    where nombre1 = nombre limit 1;
    return cliente_id;
end //
delimiter ;
select buscar_cliente_por_nombre('Carlos');

-- 5 Cantidad que hay en el inventario por tipo de fruta
drop function if exists resumen_inventario;
delimiter //
create function resumen_inventario(fruta_id INT)
returns int
deterministic
begin
    declare total_cantidad INT;
    select cantidad_disponible into total_cantidad
    from inventario
    where id_fruta = fruta_id  limit 1;
    return total_cantidad;
end //
delimiter ;
select resumen_inventario(1);

-- 6 Total de maquinaria por estado de maquinaria
drop function if exists maquinaria_estado;
delimiter //
create function maquinaria_estado(estado varchar(50))
returns int
deterministic
begin
    declare total_maquinaria int;
    select COUNT(*) into total_maquinaria
    from Maquinaria m
    join estado_maquinaria em on m.id_estado_maquinaria = em.id_estado_maquinaria
    where em.estado = estado;
    return total_maquinaria;
end //
delimiter ;
select maquinaria_estado('operativa');

-- 7 Cantidad total de empleados por cargo
drop function if exists empleados_cargo;
delimiter //
create function empleados_cargo(cargo_id INT)
returns int
deterministic
begin
    declare total INT;
    select count(*) INTO total
    from empleados
    where id_cargo = cargo_id;
    return total;
end //
delimiter ;
select empleados_cargo(3);

-- 8 Total de frutas vendidas en un mes
drop function if exists ventas_mes;
delimiter //
create function ventas_mes(mes INT, año INT)
returns int
deterministic
begin
    declare total_frutas INT;
    select SUM(cantidad) INTO total_frutas
    from Ventas
    where month(fecha) = mes and year(fecha) = año;
    return total_frutas;
end //
delimiter ;
select ventas_mes(12,2023);

-- 9 Proveedor al que se le realizaron más compras en un año
drop function if exists proveedor_mas_compras;
delimiter //
create function proveedor_mas_compras(año int)
returns varchar(255)
deterministic
begin
    declare proveedor_nombre VARCHAR(255);
    select p.nombre into proveedor_nombre
    from Compra c
    join proveedores p on c.id_proveedor = p.id_proveedor
    where year(c.fecha) = año
    group by p.id_proveedor
    order by count(c.id_compra) desc limit 1;
    return proveedor_nombre;
end //
delimiter ;
select proveedor_mas_compras(2023);

-- 10 empleado con mayor antigüedad dentro de nuestra finca
drop function if exists empleado_antiguo;
delimiter //
create function empleado_antiguo()
returns varchar(255)
deterministic
begin
    declare nombre_empleado VARCHAR(255);
    select concat(nombre1, ' ', apellido1) into nombre_empleado
    from empleados
    order by fecha_contratación asc limit 1;
    return nombre_empleado;
end //
delimiter ;
select empleado_antiguo();

-- 11 Filtrar la maquinaria por su marca
drop function if exists maquinaria_marca;
delimiter //
create function maquinaria_marca(marca varchar(255))
returns int
deterministic
begin
    declare cantidad INT;
    select count(*) into cantidad
    from maquinaria
    where maquinaria.marca = marca;
    return cantidad;
end //
delimiter ;
select maquinaria_marca('Massey Ferguson');

-- 12 Mostrar el precio de venta de una fruta por su id
drop function if exists precio_fruta;
delimiter //
create function precio_fruta(fruta_id INT)
returns int
deterministic
begin
    declare precio int;
    select precio_venta into precio
    from Frutas
    where id_fruta = fruta_id;
    return precio;
end //
delimiter ;
select precio_fruta(5);

-- 13 Calcular las ventas totales que se realizaron de una fruta en un mes
drop function if exists ventas_totales_mes;
delimiter //
create function ventas_totales_mes(fruta_id int, mes int, anio int)
returns int
deterministic
begin
    declare total int;
    select sum(subtotal) into total
    from ventas
    where id_fruta = fruta_id and month(fecha) = mes and year(fecha) = anio;
    return total;
end //
delimiter ;
select ventas_totales_mes(5,5,2022); -- si el resultado es nulo es porque en ese mes no se realizaron ventas

-- 14 calcular cuantas hectareas hay en la finca
drop function if exists total_hectareas;
delimiter //
create function total_hectareas()
returns int
deterministic
begin
	declare total int;
    select sum(tamaño) into total from terrenos;
    return total;
end //
delimiter ;
select total_hectareas();

-- 15  Contar la cantidad de empleados que se tienen dentro de la finca
drop function if exists total_empleados;
delimiter //
create function total_empleados()
returns int
deterministic
begin
	declare total int;
    select count(*) into total from empleados;
    return total;
end //
delimiter ;
select total_empleados();

-- 16 ventas realizadas por un empleado específico
drop function if exists total_ventas_empleado;
delimiter //
create function total_ventas_empleado (id_empleadoF int)
returns int
deterministic
begin
	declare total int;
    select count(id_empleado) from ventas where ventas.id_empleado = id_empleadoF
	into total ;
    return total;
end //
delimiter ;
select total_ventas_empleado(20);

-- 17 Total de ventas realizadas en un año específico
drop function if exists total_ventas;
delimiter //
create function total_ventas(año int)
returns int
deterministic
begin 
	declare total int;
	select count(*) into total from ventas where year(fecha) = año;
    return total;
end //
delimiter ;
select total_ventas(2022);

-- 18 Total de compras realizadas por un cliente específico
drop function if exists total_compras_cliente;
delimiter //
create function total_compras_cliente(id_clienteF int)
returns int
deterministic
begin
	declare total_compras int;
    select count(*) from ventas where ventas.id_cliente = id_clienteF into total_compras;
    return total_compras;
end //
delimiter ;
select total_compras_cliente(44);

-- 19 Mostrar el total de compras que se realizaron a un proveedor específico
drop function if exists total_compras_proveedor;
delimiter //
create function total_compras_proveedor(id_proveedorT int)
returns int
deterministic
begin 
	declare total_ventas int;
    select count(*) from compra where compra.id_proveedor = id_proveedorT 
    into total_ventas;
    return total_ventas;
end //
delimiter ;
select total_compras_proveedor(1);

-- 20 Calcula el promedio de venta de una fruta en específico
drop function if exists promedio_ventas;
delimiter //
create function promedio_ventas(cantidad_ventas decimal(10,2))
returns decimal(10,2)
deterministic
begin
	declare promedio decimal (10,2);
    select avg(v.cantidad) into promedio from ventas v
    inner join frutas f on v.id_fruta = f.id_fruta
    where f.id_fruta = cantidad_ventas;
    return promedio;
end //
delimiter ;
select promedio_ventas(5)