USE finca_frutal;

-- 1 Fruta con mayor cantidad disponible
select f.nombre, f.unidad_medida, i.cantidad_disponible, i.ubicación from frutas f
join inventario i on f.id_fruta = i.id_fruta
order by cantidad_disponible desc
limit 1;

-- 2 Frutas con menos de 4000 unidades disponibles
select distinct f.nombre from frutas f
join inventario i on f.id_fruta = i.id_fruta
where i.cantidad_disponible < 4000;

-- 3 Subconsulta: Ubicaciones con frutas específicas
select distinct f.nombre, i.ubicación from frutas f
join inventario i on f.id_fruta = i.id_fruta;

-- 4 Producción total de cada fruta por año
select year(c.fecha) as año_cosecha, sum(c.cant_cosechada) as cantidad_cosechada from cosecha c
join frutas f on c.id_fruta = f.id_fruta
group by 1;

-- 5 Fruta con mayor producción en el último mes
select year(c.fecha) as año, month(c.fecha) as mes, c.cant_cosechada ,f.nombre as fruta from cosecha c
join frutas f on c.id_fruta = f.id_fruta
order by 1 desc, 2 desc, 3 desc
limit 1;

-- 6 Producción promedio mensual por tipo de cultivo
select year(c.fecha) as año_cosecha, month(c.fecha) as mes_cosecha , sum(c.cant_cosechada) as cantidad_cosechada from cosecha c
join frutas f on c.id_fruta = f.id_fruta
group by 1,2
order by 1 desc, 2 desc;

-- 7 Subconsulta: Detalles de la cosecha con menor cantidad
select * from cosecha
order by cant_cosechada asc
limit 1;

-- 8 Total de ventas por mes
select year(fecha) as año, month(fecha) as mes, cantidad from ventas
order by 1 desc, 2 desc;

-- 9 Clientes con más compras
select count(v.id_cliente) as cantidad_compras, c.nombre1, c.apellido1, v.id_cliente from ventas v
join clientes c on v.id_cliente = c.id_cliente
group by 4
order by 1 desc
limit 1;

-- 10 Ventas totales de cada fruta
select f.nombre, sum(cantidad) as cantidad_vendida from ventas v 
join frutas f on v.id_fruta = f.id_fruta
group by 1
order by 2 desc;

-- 11 Empleado con mayor ingreso generado
select e.id_empleado, e.nombre1, e.apellido1 ,sum(v.subtotal) as ingresos_generados from ventas v
join empleados e on v.id_empleado = e.id_empleado
group by 1
order by 1 desc
limit 1;

-- 12 Total gastado en compras por proveedor
select sum(total_pagar) as gasto_total from compra;

-- 13 Compras realizadas en el último trimestre
select year(fecha) as año, month(fecha) as mes, total_pagar, tipo_producto_compra ,cantidad from compra
where year(fecha) = 2023 and month(fecha) <=12 and month(fecha) >=10
order by 1 desc, 2 desc;

-- 14 Productos más comprados por tipo
select sum(cantidad) as cant_total, tipo_producto_compra  from compra
group by 2
order by 1 desc;

-- 15 Detalle de la compra más costosa
select * from compra
order by total_pagar desc
limit 1;

-- 16 Mes con mayor beneficio neto
select month(fecha) mes, sum(subtotal) as beneficio_total from ventas
group by 1
order by 2 desc
limit 1;

-- 17 Empleado con más tareas asignadas en el último mes
select count(t.id_empleado) as cantidad_tareas, t.id_empleado, e.nombre1, e.apellido1 from empleados e
join tarea t on e.id_empleado = t.id_empleado
group by 2;

-- 18 Subconsulta: Promedio de ingresos generados por empleado
select v.id_empleado, avg(subtotal) as promedio_generado from ventas v
join empleados e on v.id_empleado = e.id_empleado
group by 1
order by 2 desc;

-- 19. Identificar las frutas más almacenadas actualmente
select f.id_fruta, f.nombre , sum(cantidad_disponible) as total_almacenado from inventario i
join frutas f on i.id_fruta = f.id_fruta
group by 1
order by 3 desc
limit 1;

-- 20. Mostrar el cliente que más frutas compró
select v.id_cliente, c.nombre1, c.apellido1, v.cantidad from ventas v
join clientes c on v.id_cliente = c.id_cliente
order by 4 desc
limit 1;

-- 21. Obtener el nombre completo y cargo de los empleados.
select nombre1, nombre2, apellido1, apellido2, tipo as cargo
from Empleados 
inner join Cargos on Empleados.id_cargo = Cargos.id_cargo;

-- 22 Listar empleados contratados después de 2022.
select * from Empleados 
where fecha_contratación > '2022-01-01';

-- 23 Contar empleados por cargo.
select tipo, COUNT(*) as total_empleados 
from Empleados 
inner join Cargos on Empleados.id_cargo = Cargos.id_cargo 
group by 1;

-- 24 Salarios promedio por cargo.
select tipo, avg(salario) as salario_promedio from Cargos 
inner join Empleados on Cargos.id_cargo = Empleados.id_cargo 
group by 1;

-- 25 Encontrar empleados cuyo primer nombre comience con la letra 'A'.
select * from Empleados where nombre1 like 'A%';

-- 26 Total de ventas por cliente.
select c.id_cliente, CONCAT(nombre1, ' ', apellido1) AS cliente, SUM(subtotal) AS total_ventas FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente 
GROUP BY 1;

-- 27 Ventas realizadas en 2023
select * from ventas where year(fecha) = 2023;

-- 28. Detalles de ventas que tuvieron un subtotal mayor a 4000
select * from ventas where subtotal >= 4000;

-- 29 Listar los empleados que realizaron ventas en 2024.
select distinct e.id_empleado, nombre1, apellido1, year(v.fecha) as año FROM ventas v
inner join empleados e on v.id_empleado = e.id_empleado 
where year(fecha) = 2024;

-- 30 Fruta más vendida y su cantidad total
select f.nombre, sum(v.cantidad) as cantidad_vendida from ventas v 
inner join frutas f on v.id_fruta = f.id_fruta 
group by f.nombre 
order by 2 desc 
limit 1;

-- 31 Mostrar el estado actual del inventario de frutas
select * from frutas;
select * from inventario;
select f.nombre, i.cantidad_disponible, i.ubicación from inventario i
inner join frutas f on i.id_fruta = f.id_fruta;

-- 32 Verificar si hay frutas con menos de 3000 unidades en inventario
select f.nombre, i.cantidad_disponible from inventario i 
inner join frutas f on i.id_fruta = f.id_fruta
where i.cantidad_disponible < 3000;

-- 33 Mostrar el inventario de insumos en las bodegas
select * from bodega;
select * from insumos;
select b.nombre as Nombre_Bodega, i.nombre as Insumo_Inventario, b.cantidad as Cantidad_Bodega from bodega b 
inner join insumos i on b.id_insumo = i.id_insumo;

-- 34 Identificar bodegas con menos de 5 insumos de cualquier tipo
select b.nombre, b.cantidad from bodega b where b.cantidad < 5;

-- 35 Calcular la producción mensual de cada cultivo
select * from cosecha;
select * from cultivos;
select c.tipo, SUM(co.cant_cosechada) from cosecha co
inner join cultivos c on co.id_cultivo = c.id_cultivo
group by c.tipo;

-- 36 Mostrar los cultivos con la mayor producción esperada
select tipo, MAX(c.cosecha_esperada) as Mayor_Producción_esperada from cultivos c group by tipo;

-- 37 Obtener los ingresos totales por fruta vendida
select * from frutas;
select f.nombre, SUM(v.subtotal) as ingresos_totales from ventas v 
inner join frutas f on v.id_fruta = f.id_fruta group by f.nombre;

-- 38 Identificar los clientes con mayores compras acumuladas
select c.nombre1, c.apellido1, sum(v.subtotal) as mayores_compras_acumuladas from ventas v
inner join clientes c on v.id_cliente = c.id_cliente
group by c.id_cliente, c.nombre1, c.apellido1
order by mayores_compras_acumuladas desc;

-- 39 Mostrar los gastos mensuales de compras por proveedor
select p.nombre, sum(c.total_pagar) as gasto_mensual from compra c
inner join proveedores p on c.id_proveedor = p.id_proveedor
group by p.nombre;

-- 40 Obtener el insumo más comprado
select i.nombre, sum(b.cantidad) as insumo_mas_comprado from bodega b
inner join insumos i on b.id_insumo = i.id_insumo
group by i.nombre order by insumo_mas_comprado desc limit 1;

-- 41 Calcular los gatos totales por mes
select  ig.inicio_mes, sum(ig.gastos) as gastos_totales from ingresos_gastos ig
group by ig.inicio_mes;

-- 42 Identificar el mes con mayor gasto operativo
select inicio_mes, max(gastos) as mayor_gasto from ingresos_gastos group by inicio_mes;

-- 43 Mostrar el desempeño de empleados basado en ventas realizadas.
select e.nombre1, e.nombre2, e.apellido1, e.apellido2, count(v.id_venta) as ventas from ventas v 
inner join empleados e on v.id_empleado = e.id_empleado
group by e.nombre1, e.nombre2, e.apellido1, e.apellido2
order by ventas desc;

-- 44 Listar empleados con sus tareas asignadas.
select e.nombre1, e.apellido1, t.descripción from empleados e
inner join tarea t on t.id_empleado = e.id_empleado;

-- 45 Obtener el nombre del empleado con la mayor cantidad de ventas
select * from ventas, empleados;
select nombre1, apellido1 from empleados e where id_empleado = ( select id_empleado from ventas
group by id_empleado order by count(id_venta) desc limit 1);

-- 46 Calcular el promedio de ingresos por venta
select avg(subtotal) as promedio_ingresos from ventas;

-- 47 Identificar la fruta más vendida
select f.nombre from frutas f where f.id_fruta =
(select f.id_fruta from ventas v group by f.id_fruta order by sum(v.cantidad) desc)
limit 1;

-- 48 Obtener el nombre del proveedor con mayores suministros
select p.nombre from proveedores p where p.id_proveedor = (select p.id_proveedor from compra c group by p.id_proveedor order by sum(c.cantidad) desc ) limit 1;

-- 49 Calcular el total de ingresos y gastos.
select sum(ingresos) as ingresos, sum(gastos) as gastos from ingresos_gastos;

-- 50 Listar los nombres de las frutas con mas de 5000 cantidad en inventario 
select f.nombre, i.cantidad_disponible from frutas f 
inner join Inventario i on f.id_fruta = i.id_fruta 
where i.cantidad_disponible > 5000;

-- 51 Ver los nombres y costos de las compras mayores a 210000
select c.id_compra, c.total_pagar, p.nombre from compra c 
inner join proveedores p on c.id_proveedor = p.id_proveedor 
where c.total_pagar > 210000;

-- 52 Listar frutas disponibles en el inventario con su cantidad
select f.nombre, i.cantidad_disponible, i.ubicación from Inventario i
join frutas f on i.id_fruta = f.id_fruta;

-- 53 Inventario total por ubicación
select ubicación, sum(cantidad_disponible) as cantidad_total from inventario group by ubicación;

-- 54 Listar las frutas cultivadas en terrenos mayores 8
select f.nombre, t.tamaño from frutas f 
inner join cultivos c on f.id_fruta = c.id_fruta
inner join terrenos t on c.id_terreno = t.id_terreno
where t.tamaño > 8;

-- 55 Mostrar los empleados asignados a tareas en un rango de fechas
select e.nombre1, e.apellido1, t.descripción, t.fecha_asignación from empleados e
inner join tarea t on e.id_empleado = t.id_empleado 
where t.fecha_asignación between '2023-01-01' and '2023-11-30';

-- 56 Listar los productos vendidos en cantidades mayores a 50 en una venta
select f.nombre, v.cantidad from frutas f
inner join ventas v on f.id_fruta = v.id_fruta
where v.cantidad > 50;

-- 57 Listar los costos operativos por mas mayores a 10000
select inicio_mes, gastos from ingresos_gastos where gastos > 10000;

-- 58 Mostrar el total de cultivos plantados en terrenos por tipo:
SELECT  COUNT(c.id_cultivo) AS total_cultivos
FROM terrenos t
LEFT JOIN cultivos c ON t.id_terreno = c.id_terreno;

-- 59 Total de fruta cosechada por año.
select year(c.fecha) AS año, SUM(cant_cosechada) AS total_cosechada from cosecha c
group by 1;

-- 60 Meses en los que hubieron perdidas
select inicio_mes, fin_mes, (Ingresos - gastos) as ganancia 
from Ingresos_gastos 
where (ingresos - gastos) < 0;

-- 61 Los tres meses con mayores ingresos
select inicio_mes, fin_mes, ingresos from ingresos_gastos
order by 3 desc
limit 3;

-- 62 ventas totales por año
select year(fecha) as año, sum(subtotal) as total_ventas from ventas
group by 1;

-- 63 cantidad total de productos en inventario
select f.nombre, sum(cantidad_disponible) as total_almacenado from inventario i
join frutas f on i.id_fruta = f.id_fruta
group by 1;

-- 64 tipo de fruta con más unidades en inventario
select f.nombre, sum(cantidad_disponible) as total_almacenado from inventario i
join frutas f on i.id_fruta = f.id_fruta
group by 1
order by 2 desc
limit 1;

-- 65 ultima venta realizada
select * from ventas where fecha = (select max(fecha) from ventas);

-- 66 Total de ingresos generados por ventas en un mes específico
select sum(v.subtotal) as total_ingresos from ventas v
where month(fecha) = 04 and year(fecha) = 2024;

-- 67 Total gastado por compras a proveedores en un mes específico
select sum(total_pagar) as total_gastos from compra cros
where month(fecha) = 03 and year(fecha) = 2023;

-- 68 Total de insumos en bodega.
select sum(cantidad) as total_insumos from Bodega 
where id_insumo is not null;

-- 69 Ubicaciones de inventario con más de 5000 frutas.
select ubicación from Inventario 
where cantidad_disponible > 5000;

-- 70 Total de empleados contratados por cargo.
select c.tipo, COUNT(*) as total_empleados from empleados e
join cargos c on e.id_cargo = c.id_cargo
group by 1;

-- 71 Fecha de contratación del empleado más reciente.
select max(fecha_contratación) as última_contratación from Empleados;

-- 72 Descripción de las tareas asignadas a un empleado específico.
select descripción from Tarea where id_empleado = 10;

-- 73 Tipos de frutas disponibles
select nombre from frutas;

-- 74 Total de cultivos registrados en la base de datos.
select COUNT(*) AS total_cultivos FROM Cultivos;

-- 75 Qué tipo de fruta se cosecha en cada cultivo
select distinct c.id_cultivo, f.nombre from cosecha c
join frutas f on c.id_fruta = f.id_fruta;

-- 76 Listar los tipos de maquinaria que hay dentro de la finca
select tipo from maquinaria;

-- 77 Máquinas con último mantenimiento antes de 2024.
SELECT tipo, fecha_ultimo_mantenimiento FROM Maquinaria WHERE fecha_ultimo_mantenimiento < '2024-01-01';

-- 78 Listar todas las maquinas junto con su estado
select m.tipo, m.marca, em.estado from maquinaria m
join estado_maquinaria em on m.id_estado_maquinaria = em.id_estado_maquinaria;

-- 79 Listar todos los empleados con sus respectivos logins
select e.id_empleado, concat(e.nombre1,' ',e.apellido1) as nombre, l.id_login, l.usuario, l.contraseña  from empleados e
join login l on e.id_login = l.id_login;

-- 80 Lista de nombres de proveedores y el tipo de suministro que ofrecen.
select nombre, tipo_suministro from Proveedores;

-- 81 Total gastado en compras realizadas en 2024.
select sum(total_pagar) AS total_gastado from Compra 
where year(fecha) = 2023;

-- 82 Listar las comrpas realizadas a un proveedor en específico
select * from compra
where id_proveedor = 2;

-- 83 total de ventas realizadas por cada proveedor
select p.nombre, count(*) as total_ventas from compra c
join proveedores p on c.id_proveedor = p.id_proveedor
group by 1;

-- 84 Lista de clientes y su información de contacto.
select nombre1, apellido1, contacto from Clientes;

-- 85 Ventas realizadas en un año específico
select * from ventas where year(fecha) = 2023;

-- 86 Mes con mayores gastos registrados.
select inicio_mes, gastos from Ingresos_gastos
order by gastos desc 
limit 1;

-- 87 Comparación de ingresos entre 2023 y 2024.
select year(inicio_mes) as año, sum(Ingresos) as total_ingresos from Ingresos_gastos 
where year(inicio_mes) in (2023, 2024) 
group by 1;

-- 88 Compras con un costo superior al promedio.
select * from compra 
where total_pagar > (select avg(total_pagar) from Compra);

-- 89 Ganancia total generada en 2022.
select sum(ganancia_final) as ganancia_total from Ingresos_gastos 
where year(inicio_mes) = 2022;

-- 90 Total de dinero gastado por proveedor.
select p.nombre, sum(c.total_pagar) AS total_gastado FROM proveedores p 
inner join compra c on p.id_proveedor = c.id_proveedor 
GROUP BY 1;

-- 91 Fruta con la mayor cantidad cosechada en 2023.
select f.nombre, sum(c.cant_cosechada) AS total_cosecha from cosecha c 
join frutas f on c.id_fruta = f.id_fruta 
where year(c.fecha) = 2023 
group by 1 
order by 2 DESC 
LIMIT 1;

-- 92 las tres ubicaciones con más cantidad de frutas almacenadas.
select ubicación, SUM(cantidad_disponible) as total from Inventario 
group by 1 
order by 2 desc
limit 3;

-- 93 listar todas las ubicaciones que hay dentro de inventario
select distinct ubicación from inventario;

-- 94. Fruta con menor cantidad disponible en inventario.
select f.nombre, i.cantidad_disponible from inventario i
join frutas f on i.id_fruta = f.id_fruta 
ORDER BY 2 ASC 
LIMIT 1;

-- 95 Mes con mayor ganancia final registrada.
select inicio_mes, ganancia_final from Ingresos_gastos 
order by 2 DESC 
LIMIT 1;

-- 96 Porcentaje de gastos frente a los ingresos mensuales.
select inicio_mes, (gastos * 100.0 / Ingresos) as porcentaje_gastos 
from Ingresos_gastos;

-- 97 Empleados con tareas asignadas después de 2023-05-01.

select e.nombre1, e.apellido1, t.descripción, t.fecha_asignación from empleados e 
join tarea t on e.id_empleado = t.id_empleado 
WHERE t.fecha_asignación > '2023-05-01';

-- 98 Cantidad total de tareas por empleado.
select e.id_empleado, concat(e.nombre1,' ',e.apellido1) as nombre, count(t.id_tarea) as total_tareas from empleados e 
join tarea t on e.id_empleado = t.id_empleado 
GROUP BY e.id_empleado;

-- 99 listar los cultivos junto con la maquinaria que se utiliza
select c.id_cultivo, c.tipo, m.tipo from cultivos c
join maquinaria m on c.id_maquinaria = m.id_maquinaria;

-- 100 Cantidad total de insumos disponibles en bodega.
select sum(cantidad) as total_insumos from bodega;