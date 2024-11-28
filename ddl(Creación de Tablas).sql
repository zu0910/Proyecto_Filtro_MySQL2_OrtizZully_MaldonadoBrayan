
DROP DATABASE IF EXISTS finca_frutal;
CREATE DATABASE finca_frutal;
USE finca_frutal;

CREATE TABLE Terrenos(
	id_terreno INT PRIMARY KEY,
    tamaño INT
);

CREATE TABLE Frutas (
	id_fruta INT PRIMARY KEY,
	nombre VARCHAR (250),
    unidad_medida VARCHAR(35),
    precio_venta INT
);
CREATE TABLE Estado_maquinaria(
    id_estado_maquinaria INT PRIMARY KEY,
    estado VARCHAR (255)
);
CREATE TABLE Proveedores (
	id_proveedor INT PRIMARY KEY,
    nombre VARCHAR (255),
    contacto INT,
    tipo_suministro VARCHAR (255)
); 
CREATE TABLE Compra (
	id_compra INT PRIMARY KEY,
    fecha DATE,
    id_proveedor INT,
    total_pagar INT,
    tipo_producto_compra varchar(255),
    cantidad INT,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);
CREATE TABLE Tipo_insumo(
	id_tipo_insumo INT PRIMARY KEY,
    tipo VARCHAR (255)
);
CREATE TABLE Insumos (
	id_insumo INT PRIMARY KEY,
    id_tipo_insumo INT,
    nombre VARCHAR (255),
    id_compra INT,
    FOREIGN KEY(id_tipo_insumo) REFERENCES Tipo_insumo(id_tipo_insumo),
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra)
);
CREATE TABLE Login (
    id_login INT PRIMARY KEY,
    usuario VARCHAR (255),
    contraseña VARCHAR (255)
);
CREATE TABLE Cargos (
    id_cargo INT PRIMARY KEY,
    tipo VARCHAR (255),
    salario DECIMAL(10,2)
);
CREATE TABLE Empleados (
	id_empleado  INT PRIMARY KEY,
    nombre1 VARCHAR (255),
    nombre2 VARCHAR (255),
    apellido1 VARCHAR (255),
    apellido2 VARCHAR (255),
    id_cargo INT,
    id_login INT,
    fecha_contratación DATE,
	FOREIGN KEY (id_cargo) REFERENCES Cargos(id_cargo),
	FOREIGN KEY (id_login) REFERENCES Login(id_login)    
);
CREATE TABLE Maquinaria (
    id_maquinaria INT PRIMARY KEY,
    id_estado_maquinaria INT,
    tipo VARCHAR (255),
    Marca VARCHAR (255),
    fecha_ultimo_mantenimiento DATE,
    id_compra INT,
    id_empleado INT,
    FOREIGN KEY(id_estado_maquinaria) REFERENCES Estado_maquinaria(id_estado_maquinaria),
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);
CREATE TABLE Cultivos (
    id_cultivo INT PRIMARY KEY,
    tipo VARCHAR (250),
    tamaño INT,
    id_fruta INT,
    id_terreno INT,
    cosecha_esperada VARCHAR (250),
    id_maquinaria INT,
    FOREIGN KEY (id_fruta) REFERENCES Frutas(id_fruta),
    FOREIGN KEY (id_terreno) REFERENCES Terrenos(id_terreno),
    FOREIGN KEY (id_maquinaria) REFERENCES Maquinaria(id_maquinaria)
);
CREATE TABLE Cosecha (
	id_cosecha INT PRIMARY KEY,
    id_fruta INT,
    id_cultivo INT,
    cant_cosechada INT,
    fecha DATE,
    FOREIGN KEY (id_fruta) REFERENCES Frutas(id_fruta),
    FOREIGN KEY (id_cultivo) REFERENCES Cultivos(id_cultivo)
);
CREATE TABLE Inventario (
    id_inventario INT PRIMARY KEY,
    id_fruta INT,
    cantidad_disponible INT,
    ubicación VARCHAR(255),
    FOREIGN KEY (id_fruta) REFERENCES Frutas(id_fruta)    
);
CREATE TABLE Bodega (
    id_bodega INT PRIMARY KEY,
    id_insumo INT,
    id_maquinaria INT,
    nombre VARCHAR (255),
    cantidad INT,
    FOREIGN KEY(id_insumo) REFERENCES Insumos(id_insumo),
    FOREIGN KEY(id_maquinaria) REFERENCES Maquinaria(id_maquinaria)
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre1 VARCHAR (255),
    nombre2 VARCHAR (255),
    apellido1 VARCHAR (255),
    apellido2 VARCHAR (255),
    contacto VARCHAR(255),
    id_login INT,
    FOREIGN KEY (id_login) REFERENCES Login(id_login)    
);
CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY,
    id_cliente INT,
    id_empleado INT,
    id_fruta INT,
    fecha DATE,
    cantidad INT, 
    subtotal INT,
    precio_unitario INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_fruta) REFERENCES Frutas(id_fruta),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)   
);
CREATE TABLE Tarea (
	id_tarea INT PRIMARY KEY,
    descripción VARCHAR(255),
    id_empleado INT,
    fecha_asignación DATE,
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)    
);

CREATE TABLE Ingresos_gastos (
	id_ingreso_gastos INT PRIMARY KEY AUTO_INCREMENT,
    id_compra INT,
    id_venta INT,
    inicio_mes DATE,
    Ingresos INT,
    fin_mes DATE,
    ganancia_final INT,
    gastos INT,
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
);