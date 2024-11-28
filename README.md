# Finca de producción frutal 

## Descripción

El proyecto tiene como objetivo desarrollar un sistema de base de datos robusto para gestionar las operaciones de una finca frutal. Esta base de datos incluye tablas que representan los empleados, maquinaria, cultivos, terrenos, insumos, proveedores, clientes, ventas, compras, cosechas, inventarios y tareas.

### El sistema permite:

- Registrar y monitorear el rendimiento de cultivos y cosechas.
- Gestionar el inventario y logística de insumos y maquinaria.
- Controlar ingresos, gastos y ventas de frutas.
- Asignar tareas y administrar los recursos humanos y materiales.

Diseñada para garantizar integridad referencial y optimizar procesos operativos, facilita consultas personalizadas y reportes para la toma de decisiones estratégicas.

## Fases de desarrollo 
1. **Modelo Conceptual**: Representa las entidades con sus atributos y sus relaciones.
2. **Modelo Logico**: Muestra una estructura optimizada del modelo conceptual.
3. **Normalización**: Aplicación de las formas normales (1FN, 2FN, 3FN) para garantizar la integridad y eficiencia de la base de datos.
4. **Modelo Físico**: Implementación en Sql con la inserción de datos y consultas optimizadas.
## Requisitos del Sistema

- MySQL versión 8.0 o superior.
- Cliente MySQL Workbench.
- Visual Studio.

## Instalación y configuración

1. Instalar MySQL y MySQL Workbench
2. Ejecute el archivo `ddl(Creación de Tablas).sql` para crear la estructura de la base de datos.
3. Ejecute el archivo `ddm(Inserciones de datos).sql` para insertar los datos a cada tabla.
4. Despues procede a insertar los siguientes archivos:
    - `dql.eventos.sql(eventos).sql`.
    - `dql.funciones.sql(funciones).sql`.
    - `dql.procedimientos.sql(procedimientos).sql`.
    - `dql.select.sql(consultas).sql`.
    - `dql.usuarios.sql(usuarios).sql`.
    - `dql.triggers.sql(triggers).sql`.

## Estructura de la Base de Datos

El sistema de base de datos para la **Finca Frutal** esta compuesto por multiples tablas donde representa las entidades y procesos que se llevan a cabo dentro de la empresa. Estas tablas han sido diseñadas siguiendo principios de normalización para garantizar la consistencia, integridad de la base de datos.

A continuación se realizará una descripción detallada de cada tabla junto con sus atributos. 
|Tabla|Descripción|
|--|--|
|**Terrenos**| Se registran los terrenos disponibles que posee la finca, se les asigna un id y se específica su tamaño en hectareas|
|**Frutas**| Nombre de las frutas que se producen en la finca se les asigna un id y la unidad de medida en la que se van a vender proximamente|
|**Estado maquinaria**| Tabla requerida para registrar todos los posibles estados en los que pueden estar las maquinas que hay dentro de la finca|
|**Proveedores**| Se registran todos los proveedores que surten a la finca, tanto con maquinaria como con suministros, se les agrega un identificador para poder referenciarlos en otras tablas|
|**Compra**|Se registran todas las compras realizadas a los proveedores, se específica qué tipo de insumo se adquiere, la fecha en la que se realiza y el gasto total de cada compra|
|**Tipo_insumo**| Tabla en la que se registran los tipos de insumo que se les van a comprar a los proveedores, esta tabla está creada con el fin de facilitar la relación que hay entre la tabla de proveedores y la de compras|
|**Insumos**| Se registran todos los insumos que se usan o adquieren para uso dentro de la finca|
|**Login**| Se registran todos los usuarios que van a tener acceso a la plataforma, junto con su usuario y contraseña, se les agrega un id para poder relacionarlos con las tablas de clientes y empleados|
|**Cargos**| Se registran todos los cargos que se manejan dentro de la finca, se les agrega un id para posteriormente asignarlos a los diferentes empleados|
|**Empleados**| Personal que se maneja dentro de la finca, se encuentran con un cargo asignado, y unas tareas que deben realizar con el pasar del tiempo, se les agrega un id, para relacionarlos con las tablas de ventas y así darle un manejo más eficiente a la bbdd|
|**Maquinaria**| Se registran las maquinas que hay dentro de la empresa, se relaciona con el estado en el que se encuentra, en qué compra fue adquirido, la fecha del ultimo mantenimiento que se les realizó y demás valores relevantes|
|**cultivos**| Se registran los cultivos que se tienen dentro de la finca, mostrando datos como lo son su tamaño y el tipo de fruta que se produce en cada cultivo, también se tiene la cantidad que se espera cosechar en cada cultivo y la maquinaria que se necesita para mantenerlo|
|**Cosecha**| Se registran todas las cosechas que se han realizado a lo largo del tiempo, se almacenan datos como lo son, el cultivo al que se realizó la cosecha, la cantidad que se cosechó y el tipo de fruta que se recogió|
|**Inventario**| Aquí se registran todos los valores de las frutas que se están guardando en la finca, se muestra el tipo de fruta, la cantidad que hay en el inventario y su ubicación|
|**Bodega**| Aquí se almacenan los insumos que se les compran a los proveedores, tales como maquinaria, fertilizantes y demás, se muestra el id del insumo o maquinaria, y la cantidad que se encuentra en bodega|
|**Clientes**| En esta tabla se almacenan los datos de todos los clientes que han realizado compras a la finca, se muestra su información relevante y están relacionados con la tabla de logins|
|**Ventas**| Se registran todas las ventas que se han realizado a lo largo del tiempo, se relaciona con el cliente que realiza la compra, el empleado que apoya la compra y demás datos relevantes, como lo son la cantidad, precio unitario y el total de la compra|
|**Tarea**| En esta tabla se encuentran todas las tareas que han sido asignadas a los trabajadores de la finca junto con su descripción, tienen un id para poder relacionarlas con los empleados que tienen que realizar cada una|
|**Ingresos_gastos**| Esta tabla es utilizada para registrar todos los ingresos y gastos que han habido dentro de la empresa en diferentes lapsos de tiempo, sirve para tener un mejor manejo de las finanzas y tener en cuenta estos datos para futuras operaciones que se vayan a realizar

## Ejemplos de consultas

Dentro del proyecto se pueden encontrar 100 consultas, pero por practicidad en este documento solo vamos a resaltar 3

- 1 Fruta con mayor cantidad disponible en inventario

``` sql
select f.nombre, f.unidad_medida, i.cantidad_disponible, i.ubicación from frutas f
join inventario i on f.id_fruta = i.id_fruta
order by cantidad_disponible desc
limit 1;
```

- 2 Los tres meses con mayores ingresos
``` sql
select inicio_mes, fin_mes, ingresos from ingresos_gastos
order by 3 desc
limit 3;
```

- 3 Listar todas las maquinas junto con su estado
``` sql
select m.tipo, m.marca, em.estado from maquinaria m
join estado_maquinaria em on m.id_estado_maquinaria = em.id_estado_maquinaria;
```

## Ejemplos de procedimientos

- 1. Inserar dato en la tabla terreno 
``` sql
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
call insertar_terreno(4, 15);
select * from terrenos;
```

- 2. Listar todos los cultivos
``` sql
DELIMITER //
CREATE PROCEDURE ListarCultivos()
BEGIN
    SELECT id_cultivo ,tipo ,tamaño ,id_fruta ,id_terreno ,cosecha_esperada ,id_maquinaria
    FROM Cultivos
    ORDER BY id_cultivo ,tipo ,tamaño ,id_fruta ,id_terreno ,cosecha_esperada ,id_maquinaria;
END //
DELIMITER ;
call ListarCultivos();
```

- 3. Actualizar la fecha de cosecha
``` sql
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
```

## Ejemplos de Funciones
- 1 Total de ganancia producida por un empleado en específico
``` sql
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
select ventas_empleado(10); 
```

- 2 Buscar clientes por su primer nombre
``` sql
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
```

- 3 Total de maquinaria por estado de maquinaria
``` sql
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
```

## Ejemplos de triggers
- 1. Registrar nuevos cultivos automáticamente
``` sql
DELIMITER //
CREATE TRIGGER registro_cultivos
AFTER INSERT ON Cultivos
FOR EACH ROW
BEGIN
    INSERT INTO Tarea (id_empleado, descripción, fecha_asignación)
    VALUES (NEW.id_maquinaria, 'Preparar cultivo', CURDATE());
END //
DELIMITER ;
```

- 2.  Trigger que inserta automáticamente una nueva fila en la tabla Tabla frutas 
``` sql
DELIMITER //
CREATE TRIGGER Tabla_frutas
AFTER INSERT ON frutas
FOR EACH ROW
BEGIN
	INSERT INTO Tabla_frutas(id_fruta, nombre, unidad_medida , precio_venta) 
    VALUES (NEW.id_fruta, 'Manzana Verde', 'kg', 3400);
END // DELIMITER ;

DELIMITER ;
```

- 3.  Trigger para actualizar el inventario después de una venta
``` sql
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
```

## Ejemplos de eventos
- 1. general reporte mensual de ventas
``` sql
CREATE EVENT reporte_mensual 
ON SCHEDULE EVERY 1 MONTH
STARTS '2023-11-02 10:00' 
DO INSERT INTO reportes_ventas (fecha_reporte, total_ventas)
	SELECT CURDATE(), SUM(monto) FROM ventas WHERE MONTH(fecha_venta) = MONTH(CURDATE()) - 1;
```
- 2. Actualizar inventario al final del dia
``` sql
CREATE EVENT actualizar_inventario
ON SCHEDULE EVERY 1 DAY 
STARTS '2023-11-28 23:59:00'
DO
	UPDATE inventario SET cantidad_disponible = cantidad_disponible -
    (SELECT SUM(cantidad) FROM ventas WHERE DATE(fecha_venta) = CURDATE());
``` 
- 3. Actualizar salario de empleados
``` sql
CREATE EVENT actualizar_salario
ON SCHEDULE EVERY 1 MONTH
STARTS '2023-11-28 00:00:00'
DO
	UPDATE empleados SET salario = salario * 1.05; -- Aumenta el salario un 5% cada mes
```

## Roles de usuario y permisos
``` sql 
-- Crear usuarios
CREATE USER 'Administrador'@'localhost' IDENTIFIED BY 'admin_password';
CREATE USER 'Contador'@'localhost' IDENTIFIED BY 'contador_password';
CREATE USER 'Vendedor'@'localhost' IDENTIFIED BY 'vendedor_password';
CREATE USER 'Empleado'@'localhost' IDENTIFIED BY 'empleado_password';
CREATE USER 'Cliente'@'localhost' IDENTIFIED BY 'cliente_password';

-- Privilegios de Administrador
GRANT ALL PRIVILEGES ON finca_frutal.* TO 'Administrador'@'localhost';

-- Privilegios de Contador
GRANT SELECT ON finca_frutal.Ingresos_gastos TO 'Contador'@'localhost';
GRANT SELECT ON finca_frutal.Compra TO 'Contador'@'localhost';
GRANT SELECT ON finca_frutal.Ventas TO 'Contador'@'localhost';

-- Privilegios de Vendedor
GRANT SELECT, INSERT, UPDATE ON finca_frutal.Ventas TO 'Vendedor'@'localhost';
GRANT SELECT ON finca_frutal.Inventario TO 'Vendedor'@'localhost';

-- Privilegios de Empleado
GRANT SELECT, INSERT, UPDATE ON finca_frutal.Tarea TO 'Empleado'@'localhost';
GRANT SELECT, UPDATE ON finca_frutal.Inventario TO 'Empleado'@'localhost';
GRANT SELECT ON finca_frutal.Clientes TO 'Empleado'@'localhost';

-- Privilegios de Cliente
GRANT SELECT ON finca_frutal.Frutas TO 'Cliente'@'localhost';
GRANT SELECT ON finca_frutal.Ventas TO 'Cliente'@'localhost';
```

## Contribuciones 
**Brayan Maldonado** fue encargado de la creación de los archivos sql para la creación de tablas, las inserciones, consultas y funciones, además de la documentación del documento en el archivo readme.md

**Zully Ortiz** tuvo como tarea la realización de los archivos sql para la creación de procedimientos, de usuarios, eventos y triggers, además de la documentación general del documento en Notion

Ambos estudiantes de **Campuslands Tibú (SandBox)**, este proyecto fue creado para cumplir con el filtro de Mysql 2

## Documentación
La documentación general de este proyecto de bbdd se encuentra en el siguiente link : [**Notion**](https://forest-thorn-c36.notion.site/Finca-de-producci-n-frutal-f1cd1c4d00aa4e52a2ba5b7f2c64ffd3?pvs=4)
