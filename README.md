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
2. **Modelo Logico**: Muesta una estructura optimizada del modelo conceptual.
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
|**Maquinaria**||
## Ejemplos de consultas

