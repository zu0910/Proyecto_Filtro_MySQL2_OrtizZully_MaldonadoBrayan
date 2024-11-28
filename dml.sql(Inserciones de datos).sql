Use finca_frutal;

INSERT INTO Terrenos (id_terreno, tamaño) 
VALUES 
(1, 10),  -- Terreno 1 con tamaño de 10 unidades (hectáreas, por ejemplo)
(2, 8),  -- Terreno 2 con tamaño de 15 unidades
(3, 6);   -- Terreno 3 con tamaño de 8 unidades

INSERT INTO Frutas (id_fruta, nombre, unidad_medida, precio_venta)
VALUES 
(1,'Naranja', 'Kg', 2500),    -- Naranja, unidad en kilogramos, precio de venta 2500 COP/kg
(2,'Mandarina', 'Kg', 3000),  -- Mandarina, unidad en kilogramos, precio de venta 3000 COP/kg
(3,'Fresa', 'Kg', 6000),      -- Fresa, unidad en kilogramos, precio de venta 6000 COP/kg
(4,'Manzana', 'Kg', 5000),    -- Manzana, unidad en kilogramos, precio de venta 5000 COP/kg
(5,'Durazno', 'Kg', 5500),    -- Durazno, unidad en kilogramos, precio de venta 5500 COP/kg
(6,'Piña', 'Unidad', 8000),   -- Piña, unidad (por pieza), precio de venta 8000 COP por piña
(7,'Mango', 'Kg', 4500);      -- Mango, unidad en kilogramos, precio de venta 4500 COP/kg

INSERT INTO Estado_maquinaria (id_estado_maquinaria, estado)
VALUES 
(1, 'Operativa'), 
(2, 'En mantenimiento'), 
(3, 'Fuera de servicio');

INSERT INTO Proveedores (id_proveedor, nombre, contacto, tipo_suministro) 
VALUES 
(1, 'AgroTech Supplies', 123456789, 'Fertilizantes'),
(2, 'Maquinarias Globales', 987654321, 'Maquinaria'),
(3, 'Frutas Selectas', 112233445, 'Semillas'),
(4, 'Campo Verde', 556677889, 'Pesticidas'),
(5, 'Hidratación Plus', 998877665, 'Sistemas de riego'),
(6, 'NutriCrops', 223344556, 'Abonos'),
(7, 'EcoHarvest', 667788990, 'Herbicidas'),
(8, 'Equipos del Campo', 334455667, 'Herramientas agrícolas');

INSERT INTO Compra (id_compra, fecha, id_proveedor, total_pagar, tipo_producto_compra, cantidad)
VALUES
(1, '2022-01-10', 1, 1500000, 'Fertilizantes', 20),
(2, '2022-02-15', 2, 3200000, 'Maquinaria', 1),
(3, '2022-03-05', 3, 400000, 'Semillas', 100),
(4, '2022-04-20', 4, 750000, 'Pesticidas', 25),
(5, '2022-05-12', 5, 2500000, 'Sistemas de riego', 8),
(6, '2022-06-18', 6, 180000, 'Herramientas', 12),
(7, '2022-07-23', 7, 900000, 'Fertilizantes', 30),
(8, '2022-08-14', 8, 12000000, 'Tractores', 1),
(9, '2022-09-07', 1, 2500000, 'Semillas', 500),
(10, '2022-10-29', 2, 500000, 'Pesticidas', 15),
(11, '2022-11-11', 3, 850000, 'Sistemas de riego', 2),
(12, '2022-12-01', 4, 1500000, 'Herramientas', 25),
(13, '2023-01-10', 5, 1700000, 'Fertilizantes', 50),
(14, '2023-02-15', 6, 8000000, 'Sistemas de riego', 5),
(15, '2023-03-01', 7, 3500000, 'Maquinaria', 2),
(16, '2023-04-11', 8, 210000, 'Herramientas', 10),
(17, '2023-05-22', 1, 1250000, 'Pesticidas', 20),
(18, '2023-06-03', 2, 1500000, 'Semillas', 100),
(19, '2023-07-15', 3, 4500000, 'Fertilizantes', 60),
(20, '2023-08-19', 4, 7800000, 'Tractores', 1),
(21, '2023-09-27', 5, 600000, 'Sistemas de riego', 3),
(22, '2023-10-09', 6, 320000, 'Pesticidas', 18),
(23, '2023-11-15', 7, 5000000, 'Maquinaria', 3),
(24, '2023-12-29', 8, 2700000, 'Herramientas', 20),
(25, '2022-01-12', 1, 900000, 'Semillas', 70),
(26, '2022-02-18', 2, 2000000, 'Fertilizantes', 25),
(27, '2022-03-25', 3, 1300000, 'Pesticidas', 30),
(28, '2022-04-30', 4, 6000000, 'Tractores', 2),
(29, '2022-05-05', 5, 1100000, 'Sistemas de riego', 6),
(30, '2022-06-20', 6, 150000, 'Herramientas', 8),
(31, '2022-07-15', 7, 1800000, 'Semillas', 90),
(32, '2022-08-10', 8, 7500000, 'Fertilizantes', 80),
(33, '2022-09-20', 1, 1100000, 'Pesticidas', 10),
(34, '2022-10-15', 2, 3000000, 'Herramientas', 35),
(35, '2022-11-01', 3, 1200000, 'Semillas', 200),
(36, '2022-12-10', 4, 4000000, 'Maquinaria', 2),
(37, '2023-01-22', 5, 750000, 'Fertilizantes', 10),
(38, '2023-02-11', 6, 1250000, 'Sistemas de riego', 3),
(39, '2023-03-18', 7, 340000, 'Pesticidas', 12),
(40, '2023-04-27', 8, 2200000, 'Tractores', 1),
(41, '2023-05-13', 1, 970000, 'Herramientas', 15),
(42, '2023-06-09', 2, 1450000, 'Semillas', 60),
(43, '2023-07-19', 3, 5100000, 'Fertilizantes', 70),
(44, '2023-08-15', 4, 3500000, 'Maquinaria', 2),
(45, '2023-09-22', 5, 4400000, 'Sistemas de riego', 4),
(46, '2023-10-08', 6, 230000, 'Pesticidas', 20),
(47, '2023-11-29', 7, 1150000, 'Herramientas', 12),
(48, '2023-12-03', 8, 950000, 'Semillas', 45),
(49, '2023-12-20', 1, 5700000, 'Tractores', 1),
(50, '2023-12-29', 2, 370000, 'Fertilizantes', 5);

INSERT INTO Tipo_insumo (id_tipo_insumo, tipo)
VALUES 
(1, 'Fertilizante'),
(2, 'Pesticida'),
(3, 'Semilla'),
(4, 'Herramienta'),
(5, 'Sistema de riego'),
(6, 'Tractor');

INSERT INTO Insumos (id_insumo, id_tipo_insumo, nombre, id_compra)
VALUES
(1, 1, 'Fertilizante X', 1),
(2, 2, 'Tractor Modelo A', 2),
(3, 3, 'Semillas de Maíz', 3),
(4, 4, 'Pesticida A', 4),
(5, 5, 'Sistema de riego modelo B', 5),
(6, 1, 'Fertilizante Y', 7),
(7, 2, 'Pico de Metal', 6),
(8, 3, 'Semillas de Tomate', 9),
(9, 4, 'Pesticida B', 10),
(10, 5, 'Sistema de riego modelo C', 11),
(11, 1, 'Fertilizante Z', 13),
(12, 5, 'Sistema de riego modelo D', 14),
(13, 2, 'Motocultor', 15),
(14, 4, 'Pico de Acero', 16),
(15, 1, 'Fertilizante K', 17),
(16, 3, 'Semillas de Lechuga', 18),
(17, 2, 'Fertilizante L', 19),
(18, 5, 'Sistema de riego automatizado', 20),
(19, 1, 'Pesticida C', 21),
(20, 4, 'Alicates de jardinería', 22),
(21, 3, 'Semillas de Cebolla', 23),
(22, 2, 'Fertilizante M', 24),
(23, 1, 'Fertilizante N', 25),
(24, 5, 'Sistema de riego modelo E', 26),
(25, 4, 'Pesticida D', 27),
(26, 3, 'Semillas de Pepino', 28),
(27, 1, 'Fertilizante O', 29),
(28, 5, 'Sistema de riego automático', 30),
(29, 2, 'Motocultor modelo X', 31),
(30, 4, 'Pico de Jardinería', 32),
(31, 1, 'Fertilizante P', 33),
(32, 3, 'Semillas de Zanahoria', 34),
(33, 2, 'Pico para Excavación', 35),
(34, 5, 'Sistema de riego mejorado', 36),
(35, 1, 'Fertilizante Q', 37),
(36, 4, 'Pesticida E', 38),
(37, 5, 'Sistema de riego eficiente', 39),
(38, 2, 'Tractor modelo B', 40),
(39, 1, 'Fertilizante R', 41),
(40, 3, 'Semillas de Guisante', 42),
(41, 5, 'Sistema de riego modelo F', 43),
(42, 2, 'Herramientas de jardinería', 44),
(43, 1, 'Fertilizante S', 45),
(44, 5, 'Sistema de riego inteligente', 46),
(45, 2, 'Motocultor versión A', 47),
(46, 3, 'Semillas de Pimiento', 48),
(47, 4, 'Pesticida F', 49),
(48, 1, 'Tractor modelo C', 50);

-- Logins para los empleados
INSERT INTO Login (id_login, usuario, contraseña) VALUES
(1, 'empleado1', 'contraseña123'),
(2, 'empleado2', 'contraseña123'),
(3, 'empleado3', 'contraseña123'),
(4, 'empleado4', 'contraseña123'),
(5, 'empleado5', 'contraseña123'),
(6, 'empleado6', 'contraseña123'),
(7, 'empleado7', 'contraseña123'),
(8, 'empleado8', 'contraseña123'),
(9, 'empleado9', 'contraseña123'),
(10, 'empleado10', 'contraseña123'),
(11, 'empleado11', 'contraseña123'),
(12, 'empleado12', 'contraseña123'),
(13, 'empleado13', 'contraseña123'),
(14, 'empleado14', 'contraseña123'),
(15, 'empleado15', 'contraseña123'),
(16, 'empleado16', 'contraseña123'),
(17, 'empleado17', 'contraseña123'),
(18, 'empleado18', 'contraseña123'),
(19, 'empleado19', 'contraseña123'),
(20, 'empleado20', 'contraseña123'),
(21, 'empleado21', 'contraseña123'),
(22, 'empleado22', 'contraseña123'),
(23, 'empleado23', 'contraseña123'),
(24, 'empleado24', 'contraseña123'),
(25, 'empleado25', 'contraseña123'),
(26, 'empleado26', 'contraseña123'),
(27, 'empleado27', 'contraseña123'),
(28, 'empleado28', 'contraseña123'),
(29, 'empleado29', 'contraseña123'),
(30, 'empleado30', 'contraseña123'),
(31, 'empleado31', 'contraseña123'),
(32, 'empleado32', 'contraseña123'),
(33, 'empleado33', 'contraseña123'),
(34, 'empleado34', 'contraseña123'),
(35, 'empleado35', 'contraseña123'),
(36, 'empleado36', 'contraseña123'),
(37, 'empleado37', 'contraseña123'),
(38, 'empleado38', 'contraseña123'),
(39, 'empleado39', 'contraseña123'),
(40, 'empleado40', 'contraseña123'),
(41, 'empleado41', 'contraseña123'),
(42, 'empleado42', 'contraseña123'),
(43, 'empleado43', 'contraseña123'),
(44, 'empleado44', 'contraseña123'),
(45, 'empleado45', 'contraseña123'),
(46, 'empleado46', 'contraseña123'),
(47, 'empleado47', 'contraseña123'),
(48, 'empleado48', 'contraseña123'),
(49, 'empleado49', 'contraseña123'),
(50, 'empleado50', 'contraseña123');

-- Logins para los clientes
INSERT INTO Login (id_login, usuario, contraseña) VALUES
(51, 'cliente1', 'contraseña456'),
(52, 'cliente2', 'contraseña456'),
(53, 'cliente3', 'contraseña456'),
(54, 'cliente4', 'contraseña456'),
(55, 'cliente5', 'contraseña456'),
(56, 'cliente6', 'contraseña456'),
(57, 'cliente7', 'contraseña456'),
(58, 'cliente8', 'contraseña456'),
(59, 'cliente9', 'contraseña456'),
(60, 'cliente10', 'contraseña456'),
(61, 'cliente11', 'contraseña456'),
(62, 'cliente12', 'contraseña456'),
(63, 'cliente13', 'contraseña456'),
(64, 'cliente14', 'contraseña456'),
(65, 'cliente15', 'contraseña456'),
(66, 'cliente16', 'contraseña456'),
(67, 'cliente17', 'contraseña456'),
(68, 'cliente18', 'contraseña456'),
(69, 'cliente19', 'contraseña456'),
(70, 'cliente20', 'contraseña456'),
(71, 'cliente21', 'contraseña456'),
(72, 'cliente22', 'contraseña456'),
(73, 'cliente23', 'contraseña456'),
(74, 'cliente24', 'contraseña456'),
(75, 'cliente25', 'contraseña456'),
(76, 'cliente26', 'contraseña456'),
(77, 'cliente27', 'contraseña456'),
(78, 'cliente28', 'contraseña456'),
(79, 'cliente29', 'contraseña456'),
(80, 'cliente30', 'contraseña456'),
(81, 'cliente31', 'contraseña456'),
(82, 'cliente32', 'contraseña456'),
(83, 'cliente33', 'contraseña456'),
(84, 'cliente34', 'contraseña456'),
(85, 'cliente35', 'contraseña456'),
(86, 'cliente36', 'contraseña456'),
(87, 'cliente37', 'contraseña456'),
(88, 'cliente38', 'contraseña456'),
(89, 'cliente39', 'contraseña456'),
(90, 'cliente40', 'contraseña456'),
(91, 'cliente41', 'contraseña456'),
(92, 'cliente42', 'contraseña456'),
(93, 'cliente43', 'contraseña456'),
(94, 'cliente44', 'contraseña456'),
(95, 'cliente45', 'contraseña456'),
(96, 'cliente46', 'contraseña456'),
(97, 'cliente47', 'contraseña456'),
(98, 'cliente48', 'contraseña456'),
(99, 'cliente49', 'contraseña456'),
(100, 'cliente50', 'contraseña456');

INSERT INTO Cargos (id_cargo, tipo, salario)
VALUES
(1, 'Gerente de Finca', 3500000.00),   -- Gerente de Finca: Salario mensual aproximado
(2, 'Supervisor de Cultivos', 2500000.00),  -- Supervisor de Cultivos: Salario mensual aproximado
(3, 'Trabajador de Campo', 1200000.00),   -- Trabajador de Campo: Salario mensual aproximado
(4, 'Técnico en Maquinaria', 2300000.00),  -- Técnico en Maquinaria: Salario mensual aproximado
(5, 'Administrador de Inventarios', 2000000.00),  -- Administrador de Inventarios: Salario mensual aproximado
(6, 'Asistente de Ventas', 1500000.00),   -- Asistente de Ventas: Salario mensual aproximado
(7, 'Cajero de Bodega', 1300000.00),    -- Cajero de Bodega: Salario mensual aproximado
(8, 'Especialista en Riego', 2200000.00),  -- Especialista en Riego: Salario mensual aproximado
(9, 'Encargado de Logística', 2100000.00),  -- Encargado de Logística: Salario mensual aproximado
(10, 'Vendedor', 1800000.00);           -- Vendedor: Salario mensual aproximado

-- Inserciones para la tabla Empleados (50 registros)
INSERT INTO Empleados (id_empleado, nombre1, nombre2, apellido1, apellido2, id_cargo, id_login, fecha_contratación)
VALUES
(1, 'Carlos', 'Andrés', 'Pérez', 'Rodríguez', 1, 1, '2020-01-10'),
(2, 'Ana', 'María', 'González', 'Mora', 2, 2, '2021-02-15'),
(3, 'Juan', 'David', 'López', 'Martínez', 3, 3, '2022-03-20'),
(4, 'Sofía', 'Isabel', 'Moreno', 'Sánchez', 4, 4, '2022-06-01'),
(5, 'Luis', 'Felipe', 'Torres', 'Gutiérrez', 5, 5, '2023-05-25'),
(6, 'Mariana', 'Fernanda', 'Jiménez', 'Salazar', 6, 6, '2021-07-05'),
(7, 'Pedro', 'Antonio', 'Méndez', 'González', 7, 7, '2021-08-15'),
(8, 'Luisa', 'Elena', 'Ramírez', 'Díaz', 8, 8, '2020-12-10'),
(9, 'Ricardo', 'José', 'Castro', 'Rojas', 9, 9, '2021-04-03'),
(10, 'Paola', 'Luz', 'Vásquez', 'Ramírez', 10, 10, '2022-10-01'),
(11, 'Jorge', 'Luis', 'Hernández', 'Vega', 1, 11, '2022-07-11'),
(12, 'Rosa', 'Pilar', 'Gómez', 'Díaz', 2, 12, '2023-01-10'),
(13, 'Gabriel', 'Eduardo', 'Gutiérrez', 'Cordero', 3, 13, '2022-11-15'),
(14, 'Verónica', 'María', 'Alvarez', 'Suárez', 4, 14, '2020-09-10'),
(15, 'Andrés', 'Javier', 'Molina', 'Ríos', 5, 15, '2021-04-25'),
(16, 'Cristina', 'Mónica', 'Paredes', 'Cáceres', 6, 16, '2020-06-20'),
(17, 'Óscar', 'Ricardo', 'Ramírez', 'González', 7, 17, '2022-12-12'),
(18, 'Carmen', 'Elena', 'Vega', 'Serrano', 8, 18, '2023-03-01'),
(19, 'Felipe', 'Eduardo', 'López', 'Torres', 9, 19, '2020-05-12'),
(20, 'Susana', 'Pilar', 'Álvarez', 'Muñoz', 10, 20, '2021-07-21'),
(21, 'Carlos', 'Eduardo', 'Sánchez', 'Marín', 1, 21, '2022-09-25'),
(22, 'Rita', 'Beatriz', 'Núñez', 'Díaz', 2, 22, '2023-03-10'),
(23, 'Javier', 'Esteban', 'Rodríguez', 'López', 3, 23, '2020-07-16'),
(24, 'Miguel', 'Ángel', 'Mendoza', 'García', 4, 24, '2021-11-05'),
(25, 'Sara', 'Paola', 'Hernández', 'Muñoz', 5, 25, '2022-08-20'),
(26, 'Ricardo', 'Antonio', 'Martínez', 'Álvarez', 6, 26, '2022-10-13'),
(27, 'Tina', 'Lucía', 'Fernández', 'Herrera', 7, 27, '2021-12-02'),
(28, 'Eduardo', 'Miguel', 'Sánchez', 'López', 8, 28, '2020-11-19'),
(29, 'Lucía', 'Ana', 'González', 'Serrano', 9, 29, '2023-02-11'),
(30, 'Gustavo', 'Manuel', 'Ramírez', 'Martínez', 10, 30, '2022-06-18'),
(31, 'David', 'Luis', 'Vega', 'González', 1, 31, '2021-07-30'),
(32, 'Clara', 'Isabel', 'Mora', 'Vargas', 2, 32, '2023-01-10'),
(33, 'Héctor', 'Javier', 'Morales', 'Sánchez', 3, 33, '2022-12-15'),
(34, 'Gloria', 'Andrea', 'Gómez', 'Martínez', 4, 34, '2020-04-17'),
(35, 'Juan', 'Carlos', 'Serrano', 'Pérez', 5, 35, '2023-06-20'),
(36, 'Lorena', 'Margarita', 'Gómez', 'Santos', 6, 36, '2021-03-02'),
(37, 'Carlos', 'Felipe', 'Torres', 'Martínez', 7, 37, '2022-05-23'),
(38, 'Patricia', 'Victoria', 'Álvarez', 'Hernández', 8, 38, '2021-02-10'),
(39, 'Antonio', 'Ramón', 'López', 'González', 9, 39, '2020-08-09'),
(40, 'Victoria', 'Marina', 'Muñoz', 'Herrera', 10, 40, '2023-07-01'),
(41, 'Raúl', 'Antonio', 'García', 'Rodríguez', 1, 41, '2022-01-13'),
(42, 'Nerea', 'Beatriz', 'Díaz', 'Paredes', 2, 42, '2023-04-30'),
(43, 'Luis', 'Enrique', 'Cordero', 'Serrano', 3, 43, '2022-08-23'),
(44, 'Lucía', 'Elena', 'Martínez', 'Álvarez', 4, 44, '2023-03-16'),
(45, 'Javier', 'Felipe', 'Ríos', 'Vega', 5, 45, '2020-09-22'),
(46, 'Ricardo', 'Carlos', 'Sánchez', 'González', 6, 46, '2021-10-14'),
(47, 'Pedro', 'Alberto', 'Serrano', 'Gómez', 7, 47, '2022-12-19'),
(48, 'Marcela', 'Lina', 'Muñoz', 'Hernández', 8, 48, '2023-02-28'),
(49, 'Rosa', 'Leticia', 'Vega', 'Torres', 9, 49, '2021-06-14'),
(50, 'Antonio', 'Juan', 'González', 'Gutiérrez', 10, 50, '2020-04-11');

INSERT INTO Maquinaria (id_maquinaria, id_estado_maquinaria, tipo, Marca, fecha_ultimo_mantenimiento, id_compra, id_empleado)
VALUES
(1, 1, 'Excavadora', 'Caterpillar', '2023-08-01', 1, 3),
(2, 2, 'Bulldozer', 'Komatsu', '2023-09-10', 5, 7),
(3, 3, 'Retroexcavadora', 'Volvo', '2023-11-01', 9, 10),
(4, 2, 'Pala cargadora', 'JCB', '2023-06-15', 13, 15),
(5, 1, 'Grúa', 'Terex', '2023-07-22', 18, 20),
(6, 3, 'Tractor', 'John Deere', '2023-10-05', 7, 4),
(7, 2, 'Excavadora', 'Hitachi', '2023-04-10', 3, 22),
(8, 1, 'Compactadora', 'Sakai', '2023-08-18', 12, 30),
(9, 3, 'Cargadora', 'Liebherr', '2023-11-12', 4, 18),
(10, 2, 'Tractor', 'Massey Ferguson', '2023-05-25', 6, 8),
(11, 1, 'Bulldozer', 'Case', '2023-06-20', 11, 14),
(12, 3, 'Motoniveladora', 'Ford', '2023-02-28', 15, 3),
(13, 1, 'Pala cargadora', 'Komatsu', '2023-07-02', 2, 27),
(14, 2, 'Grúa', 'Liebherr', '2023-09-05', 8, 5),
(15, 3, 'Excavadora', 'Kobelco', '2023-01-16', 10, 13),
(16, 2, 'Cargadora', 'Caterpillar', '2023-10-19', 4, 6),
(17, 1, 'Tractor', 'New Holland', '2023-03-21', 9, 2),
(18, 3, 'Pala cargadora', 'JCB', '2023-12-01', 14, 19),
(19, 2, 'Compactadora', 'Volvo', '2023-11-15', 16, 10),
(20, 1, 'Grúa', 'Terex', '2023-04-17', 17, 8);

INSERT INTO Bodega (id_bodega, id_insumo, id_maquinaria, nombre, cantidad)
VALUES
(1, NULL, 3, 'Tractor John Deere', 1),
(2, NULL, 5, 'Tractor New Holland', 2),
(3, NULL, 7, 'Camioneta Nissan', 1),
(4, NULL, 8, 'Motocultor Kubota', 3),
(5, 1, NULL, 'Fertilizante Orgánico', 100),
(6, 2, NULL, 'Fertilizante Químico', 200),
(7, 3, NULL, 'Semillas de Maíz', 500),
(8, 4, NULL, 'Pesticida Fitosanitario', 300),
(9, 5, NULL, 'Sistema de Riego por Goteo', 10),
(10, 6, NULL, 'Herramientas de Mano', 150);

INSERT INTO Clientes (id_cliente, nombre1, nombre2, apellido1, apellido2, contacto, id_login) VALUES
(1, 'Carlos', 'Luis', 'Gomez', 'Martinez', 'carlosgomez@example.com', 51),
(2, 'Maria', 'Fernanda', 'Perez', 'Lopez', 'mariafernanda@example.com', 52),
(3, 'Jose', 'Antonio', 'Rodriguez', 'Sanchez', 'joseantonio@example.com', 53),
(4, 'Ana', 'Maria', 'Garcia', 'Hernandez', 'anamaria@example.com', 54),
(5, 'Luis', 'Eduardo', 'Diaz', 'Martinez', 'luiseduardo@example.com', 55),
(6, 'Patricia', 'Isabel', 'Morales', 'Alvarez', 'patriciaisabel@example.com', 56),
(7, 'Fernando', 'Javier', 'Jimenez', 'Torres', 'fernandojavier@example.com', 57),
(8, 'Isabel', 'Carmen', 'Gonzalez', 'Ruiz', 'isabelcarmen@example.com', 58),
(9, 'Ricardo', 'Miguel', 'Lopez', 'Gomez', 'ricardomiguel@example.com', 59),
(10, 'Laura', 'Elena', 'Martinez', 'Navarro', 'lauraelena@example.com', 60),
(11, 'Juan', 'Carlos', 'Lopez', 'Ramirez', 'juancarlos@example.com', 61),
(12, 'Raquel', 'Beatriz', 'Perez', 'Herrera', 'raquelbeatriz@example.com', 62),
(13, 'Hector', 'Eduardo', 'Sanchez', 'Torres', 'hectoreduardo@example.com', 63),
(14, 'Carmen', 'Ana', 'Alvarez', 'Rodriguez', 'carmenana@example.com', 64),
(15, 'David', 'Antonio', 'Martinez', 'Lopez', 'davidantonio@example.com', 65),
(16, 'Sandra', 'Maria', 'Garcia', 'Diaz', 'sandramaria@example.com', 66),
(17, 'Pedro', 'Jose', 'Lopez', 'Gonzalez', 'pedrojose@example.com', 67),
(18, 'Marta', 'Lucia', 'Perez', 'Gomez', 'martalucia@example.com', 68),
(19, 'Antonio', 'Manuel', 'Martinez', 'Torres', 'antoniomanuel@example.com', 69),
(20, 'Beatriz', 'Sofia', 'Gonzalez', 'Diaz', 'beatrizsofia@example.com', 70),
(21, 'Esteban', 'Carlos', 'Rodriguez', 'Navarro', 'estebancarlos@example.com', 71),
(22, 'Veronica', 'Elena', 'Hernandez', 'Morales', 'veronicaelena@example.com', 72),
(23, 'Josefa', 'Maria', 'Torres', 'Alvarez', 'josefamaria@example.com', 73),
(24, 'Raul', 'Luis', 'Sanchez', 'Ruiz', 'raulluis@example.com', 74),
(25, 'Marina', 'Carmen', 'Garcia', 'Gonzalez', 'marinacarmen@example.com', 75),
(26, 'Victor', 'Manuel', 'Lopez', 'Herrera', 'victormanuel@example.com', 76),
(27, 'Elena', 'Maria', 'Hernandez', 'Perez', 'elenamaria@example.com', 77),
(28, 'Carlos', 'Alfonso', 'Jimenez', 'Torres', 'carlosalfonso@example.com', 78),
(29, 'Pilar', 'Lucia', 'Diaz', 'Sanchez', 'pilarlucia@example.com', 79),
(30, 'Javier', 'Antonio', 'Gomez', 'Rodriguez', 'javierantonio@example.com', 80),
(31, 'Luisa', 'Fernanda', 'Martinez', 'Lopez', 'luisafernanda@example.com', 81),
(32, 'Carlos', 'Eduardo', 'Lopez', 'Alvarez', 'carloseduardo@example.com', 82),
(33, 'Juliana', 'Sofia', 'Gonzalez', 'Ruiz', 'julianasofia@example.com', 83),
(34, 'Juan', 'Manuel', 'Garcia', 'Diaz', 'juanmanuel@example.com', 84),
(35, 'Adriana', 'Beatriz', 'Hernandez', 'Sanchez', 'adrianabeatriz@example.com', 85),
(36, 'Tomás', 'Antonio', 'Rodriguez', 'Torres', 'tomasantonio@example.com', 86),
(37, 'Raquel', 'Pilar', 'Martinez', 'Gomez', 'raquelpilar@example.com', 87),
(38, 'Francisco', 'José', 'Gonzalez', 'Perez', 'franciscojose@example.com', 88),
(39, 'Claudia', 'Elena', 'Lopez', 'Herrera', 'claudiaelena@example.com', 89),
(40, 'Fernando', 'Juan', 'Rodriguez', 'Hernandez', 'fernandojuan@example.com', 90),
(41, 'Elena', 'Carmen', 'Jimenez', 'Navarro', 'elenacarmen@example.com', 91),
(42, 'Victor', 'Eduardo', 'Gomez', 'Lopez', 'victoreduardo@example.com', 92),
(43, 'Marta', 'Beatriz', 'Sanchez', 'Ruiz', 'martabeatriz@example.com', 93),
(44, 'Ricardo', 'Eduardo', 'Torres', 'Gonzalez', 'ricardoeduardo@example.com', 94),
(45, 'Esteban', 'Jose', 'Lopez', 'Alvarez', 'estebanjose@example.com', 95),
(46, 'Paula', 'Isabel', 'Garcia', 'Diaz', 'paulaisabel@example.com', 96),
(47, 'Salvador', 'Manuel', 'Hernandez', 'Sanchez', 'salvadormanuel@example.com', 97),
(48, 'Sofia', 'Carmen', 'Rodriguez', 'Gomez', 'sofiacarmen@example.com', 98),
(49, 'Carlos', 'Miguel', 'Gonzalez', 'Herrera', 'carlosmiguel@example.com', 99),
(50, 'Ana', 'Lucia', 'Diaz', 'Perez', 'analucia@example.com', 100);

INSERT INTO Cultivos (id_cultivo, tipo, tamaño, id_fruta, id_terreno, cosecha_esperada, id_maquinaria)
VALUES
(1, 'Naranjas', 3, 1, 1, '5000 kg', 3),  -- Cultivo de Naranjas (id_maquinaria = 3)
(2, 'Mandarinas', 3, 2, 1, '6000 kg', 7),  -- Cultivo de Mandarinas (id_maquinaria = 7)
(3, 'Fresas', 2, 3, 2, '2000 kg', 2),  -- Cultivo de Fresas (id_maquinaria = 2)
(4, 'Manzanas', 3, 4, 2, '4000 kg', 5),  -- Cultivo de Manzanas (id_maquinaria = 5)
(5, 'Duraznos', 2, 5, 3, '3000 kg', 6),  -- Cultivo de Duraznos (id_maquinaria = 6)
(6, 'Piñas', 2, 6, 3, '2500 kg', 1),  -- Cultivo de Piñas (id_maquinaria = 1)
(7, 'Mangos', 3, 7, 3, '4500 kg', 4);  -- Cultivo de Mangos (id_maquinaria = 4)

INSERT INTO Cosecha (id_cosecha, id_fruta, id_cultivo, cant_cosechada, fecha)
VALUES
(1, 1, 1, 4800, '2022-06-15'),  -- Cosecha de Naranjas (id_fruta = 1, id_cultivo = 1), 4800 kg, fecha 15 de junio 2022
(2, 2, 2, 5800, '2022-06-20'),  -- Cosecha de Mandarinas (id_fruta = 2, id_cultivo = 2), 5800 kg, fecha 20 de junio 2022
(3, 3, 3, 1900, '2022-07-05'),  -- Cosecha de Fresas (id_fruta = 3, id_cultivo = 3), 1900 kg, fecha 5 de julio 2022
(4, 4, 4, 5800, '2022-07-10'),  -- Cosecha de Manzanas (id_fruta = 4, id_cultivo = 4), 5800 kg, fecha 10 de julio 2022
(5, 5, 5, 2800, '2022-07-15'),  -- Cosecha de Duraznos (id_fruta = 5, id_cultivo = 5), 2800 kg, fecha 15 de julio 2022
(6, 6, 6, 3000, '2022-08-01'),  -- Cosecha de Piñas (id_fruta = 6, id_cultivo = 6), 3000 kg, fecha 1 de agosto 2022
(7, 7, 7, 4200, '2022-08-10'),  -- Cosecha de Mangos (id_fruta = 7, id_cultivo = 7), 4200 kg, fecha 10 de agosto 2022
(8, 1, 1, 4900, '2023-01-20'),  -- Cosecha de Naranjas (id_fruta = 1, id_cultivo = 1), 4900 kg, fecha 20 de enero 2023
(9, 2, 2, 5700, '2023-02-15'),  -- Cosecha de Mandarinas (id_fruta = 2, id_cultivo = 2), 5700 kg, fecha 15 de febrero 2023
(10, 3, 3, 2000, '2023-03-10'), -- Cosecha de Fresas (id_fruta = 3, id_cultivo = 3), 2000 kg, fecha 10 de marzo 2023
(11, 4, 4, 6000, '2023-04-05'), -- Cosecha de Manzanas (id_fruta = 4, id_cultivo = 4), 6000 kg, fecha 5 de abril 2023
(12, 5, 5, 2900, '2023-05-01'), -- Cosecha de Duraznos (id_fruta = 5, id_cultivo = 5), 2900 kg, fecha 1 de mayo 2023
(13, 6, 6, 3200, '2023-06-01'), -- Cosecha de Piñas (id_fruta = 6, id_cultivo = 6), 3200 kg, fecha 1 de junio 2023
(14, 7, 7, 4300, '2023-07-15'), -- Cosecha de Mangos (id_fruta = 7, id_cultivo = 7), 4300 kg, fecha 15 de julio 2023
(15, 1, 1, 5000, '2023-08-20'), -- Cosecha de Naranjas (id_fruta = 1, id_cultivo = 1), 5000 kg, fecha 20 de agosto 2023
(16, 2, 2, 5900, '2023-09-25'), -- Cosecha de Mandarinas (id_fruta = 2, id_cultivo = 2), 5900 kg, fecha 25 de septiembre 2023
(17, 3, 3, 2100, '2023-10-10'), -- Cosecha de Fresas (id_fruta = 3, id_cultivo = 3), 2100 kg, fecha 10 de octubre 2023
(18, 4, 4, 5500, '2023-11-01'), -- Cosecha de Manzanas (id_fruta = 4, id_cultivo = 4), 5500 kg, fecha 1 de noviembre 2023
(19, 5, 5, 2650, '2023-11-20'), -- Cosecha de Duraznos (id_fruta = 5, id_cultivo = 5), 2650 kg, fecha 20 de noviembre 2023
(20, 6, 6, 3100, '2023-12-05'), -- Cosecha de Piñas (id_fruta = 6, id_cultivo = 6), 3100 kg, fecha 5 de diciembre 2023
(21, 7, 7, 4400, '2023-12-15'), -- Cosecha de Mangos (id_fruta = 7, id_cultivo = 7), 4400 kg, fecha 15 de diciembre 2023
(22, 1, 1, 5100, '2024-01-10'), -- Cosecha de Naranjas (id_fruta = 1, id_cultivo = 1), 5100 kg, fecha 10 de enero 2024
(23, 2, 2, 6000, '2024-02-05'), -- Cosecha de Mandarinas (id_fruta = 2, id_cultivo = 2), 6000 kg, fecha 5 de febrero 2024
(24, 3, 3, 2200, '2024-03-01'), -- Cosecha de Fresas (id_fruta = 3, id_cultivo = 3), 2200 kg, fecha 1 de marzo 2024
(25, 4, 4, 5700, '2024-03-15'), -- Cosecha de Manzanas (id_fruta = 4, id_cultivo = 4), 5700 kg, fecha 15 de marzo 2024
(26, 5, 5, 2800, '2024-04-05'), -- Cosecha de Duraznos (id_fruta = 5, id_cultivo = 5), 2800 kg, fecha 5 de abril 2024
(27, 6, 6, 3250, '2024-04-20'), -- Cosecha de Piñas (id_fruta = 6, id_cultivo = 6), 3250 kg, fecha 20 de abril 2024
(28, 7, 7, 4200, '2024-05-01'), -- Cosecha de Mangos (id_fruta = 7, id_cultivo = 7), 4200 kg, fecha 1 de mayo 2024
(29, 1, 1, 5200, '2024-05-10'), -- Cosecha de Naranjas (id_fruta = 1, id_cultivo = 1), 5200 kg, fecha 10 de mayo 2024
(30, 2, 2, 5700, '2024-06-01'), -- Cosecha de Mandarinas (id_fruta = 2, id_cultivo = 2), 5700 kg, fecha 1 de junio 2024
(31, 3, 3, 1950, '2024-06-15'), -- Cosecha de Fresas (id_fruta = 3, id_cultivo = 3), 1950 kg, fecha 15 de junio 2024
(32, 4, 4, 5900, '2024-07-01'), -- Cosecha de Manzanas (id_fruta = 4, id_cultivo = 4), 5900 kg, fecha 1 de julio 2024
(33, 5, 5, 2700, '2024-07-10'), -- Cosecha de Duraznos (id_fruta = 5, id_cultivo = 5), 2700 kg, fecha 10 de julio 2024
(34, 6, 6, 3150, '2024-07-20'), -- Cosecha de Piñas (id_fruta = 6, id_cultivo = 6), 3150 kg, fecha 20 de julio 2024
(35, 7, 7, 4200, '2024-08-05'), -- Cosecha de Mangos (id_fruta = 7, id_cultivo = 7), 4200 kg, fecha 5 de agosto 2024
(36, 1, 1, 5300, '2024-08-15'), -- Cosecha de Naranjas (id_fruta = 1, id_cultivo = 1), 5300 kg, fecha 15 de agosto 2024
(37, 2, 2, 5900, '2024-09-01'), -- Cosecha de Mandarinas (id_fruta = 2, id_cultivo = 2), 5900 kg, fecha 1 de septiembre 2024
(38, 3, 3, 2100, '2024-09-10'), -- Cosecha de Fresas (id_fruta = 3, id_cultivo = 3), 2100 kg, fecha 10 de septiembre 2024
(39, 4, 4, 6000, '2024-09-15'), -- Cosecha de Manzanas (id_fruta = 4, id_cultivo = 4), 6000 kg, fecha 15 de septiembre 2024
(40, 5, 5, 2800, '2024-10-01'), -- Cosecha de Duraznos (id_fruta = 5, id_cultivo = 5), 2800 kg, fecha 1 de octubre 2024
(41, 6, 6, 3250, '2024-10-10'), -- Cosecha de Piñas (id_fruta = 6, id_cultivo = 6), 3250 kg, fecha 10 de octubre 2024
(42, 7, 7, 4300, '2024-10-15'), -- Cosecha de Mangos (id_fruta = 7, id_cultivo = 7), 4300 kg, fecha 15 de octubre 2024
(43, 1, 1, 5100, '2024-11-01'), -- Cosecha de Naranjas (id_fruta = 1, id_cultivo = 1), 5100 kg, fecha 1 de noviembre 2024
(44, 2, 2, 5800, '2024-11-05'), -- Cosecha de Mandarinas (id_fruta = 2, id_cultivo = 2), 5800 kg, fecha 5 de noviembre 2024
(45, 3, 3, 2000, '2024-11-10'), -- Cosecha de Fresas (id_fruta = 3, id_cultivo = 3), 2000 kg, fecha 10 de noviembre 2024
(46, 4, 4, 5900, '2024-11-15'), -- Cosecha de Manzanas (id_fruta = 4, id_cultivo = 4), 5900 kg, fecha 15 de noviembre 2024
(47, 5, 5, 2700, '2024-12-01'), -- Cosecha de Duraznos (id_fruta = 5, id_cultivo = 5), 2700 kg, fecha 1 de diciembre 2024
(48, 6, 6, 3100, '2024-12-10'), -- Cosecha de Piñas (id_fruta = 6, id_cultivo = 6), 3100 kg, fecha 10 de diciembre 2024
(49, 7, 7, 4400, '2024-12-15'), -- Cosecha de Mangos (id_fruta = 7, id_cultivo = 7), 4400 kg, fecha 15 de diciembre 2024
(50, 1, 1, 4800, '2024-12-20'); -- Cosecha de Naranjas (id_fruta = 1, id_cultivo = 1), 4800 kg, fecha 20 de diciembre 2024

INSERT INTO Inventario (id_inventario, id_fruta, cantidad_disponible, ubicación)
VALUES
(1, 1, 4800, 'Bodega A - Almacén 1'),  -- Naranjas, 4800 kg, ubicación Bodega A
(2, 2, 5800, 'Bodega A - Almacén 2'),  -- Mandarinas, 5800 kg, ubicación Bodega A
(3, 3, 1900, 'Bodega B - Almacén 1'),  -- Fresas, 1900 kg, ubicación Bodega B
(4, 4, 5800, 'Bodega B - Almacén 2'),  -- Manzanas, 5800 kg, ubicación Bodega B
(5, 5, 2800, 'Bodega C - Almacén 1'),  -- Duraznos, 2800 kg, ubicación Bodega C
(6, 6, 3000, 'Bodega C - Almacén 2'),  -- Piñas, 3000 kg, ubicación Bodega C
(7, 7, 4200, 'Bodega D - Almacén 1'),  -- Mangos, 4200 kg, ubicación Bodega D
(8, 1, 4900, 'Bodega A - Almacén 1'),  -- Naranjas, 4900 kg, ubicación Bodega A
(9, 2, 5700, 'Bodega A - Almacén 2'),  -- Mandarinas, 5700 kg, ubicación Bodega A
(10, 3, 2000, 'Bodega B - Almacén 1'), -- Fresas, 2000 kg, ubicación Bodega B
(11, 4, 6000, 'Bodega B - Almacén 2'), -- Manzanas, 6000 kg, ubicación Bodega B
(12, 5, 2900, 'Bodega C - Almacén 1'), -- Duraznos, 2900 kg, ubicación Bodega C
(13, 6, 3200, 'Bodega C - Almacén 2'), -- Piñas, 3200 kg, ubicación Bodega C
(14, 7, 4300, 'Bodega D - Almacén 1'), -- Mangos, 4300 kg, ubicación Bodega D
(15, 1, 5000, 'Bodega A - Almacén 1'), -- Naranjas, 5000 kg, ubicación Bodega A
(16, 2, 5900, 'Bodega A - Almacén 2'), -- Mandarinas, 5900 kg, ubicación Bodega A
(17, 3, 2100, 'Bodega B - Almacén 1'), -- Fresas, 2100 kg, ubicación Bodega B
(18, 4, 5500, 'Bodega B - Almacén 2'), -- Manzanas, 5500 kg, ubicación Bodega B
(19, 5, 2650, 'Bodega C - Almacén 1'), -- Duraznos, 2650 kg, ubicación Bodega C
(20, 6, 3100, 'Bodega C - Almacén 2'), -- Piñas, 3100 kg, ubicación Bodega C
(21, 7, 4400, 'Bodega D - Almacén 1'), -- Mangos, 4400 kg, ubicación Bodega D
(22, 1, 5100, 'Bodega A - Almacén 1'), -- Naranjas, 5100 kg, ubicación Bodega A
(23, 2, 6000, 'Bodega A - Almacén 2'), -- Mandarinas, 6000 kg, ubicación Bodega A
(24, 3, 2200, 'Bodega B - Almacén 1'), -- Fresas, 2200 kg, ubicación Bodega B
(25, 4, 5700, 'Bodega B - Almacén 2'), -- Manzanas, 5700 kg, ubicación Bodega B
(26, 5, 2800, 'Bodega C - Almacén 1'), -- Duraznos, 2800 kg, ubicación Bodega C
(27, 6, 3250, 'Bodega C - Almacén 2'), -- Piñas, 3250 kg, ubicación Bodega C
(28, 7, 4200, 'Bodega D - Almacén 1'), -- Mangos, 4200 kg, ubicación Bodega D
(29, 1, 5200, 'Bodega A - Almacén 1'), -- Naranjas, 5200 kg, ubicación Bodega A
(30, 2, 5700, 'Bodega A - Almacén 2'), -- Mandarinas, 5700 kg, ubicación Bodega A
(31, 3, 1950, 'Bodega B - Almacén 1'), -- Fresas, 1950 kg, ubicación Bodega B
(32, 4, 5900, 'Bodega B - Almacén 2'), -- Manzanas, 5900 kg, ubicación Bodega B
(33, 5, 2700, 'Bodega C - Almacén 1'), -- Duraznos, 2700 kg, ubicación Bodega C
(34, 6, 3150, 'Bodega C - Almacén 2'), -- Piñas, 3150 kg, ubicación Bodega C
(35, 7, 4300, 'Bodega D - Almacén 1'), -- Mangos, 4300 kg, ubicación Bodega D
(36, 1, 5300, 'Bodega A - Almacén 1'), -- Naranjas, 5300 kg, ubicación Bodega A
(37, 2, 5900, 'Bodega A - Almacén 2'), -- Mandarinas, 5900 kg, ubicación Bodega A
(38, 3, 2100, 'Bodega B - Almacén 1'), -- Fresas, 2100 kg, ubicación Bodega B
(39, 4, 6000, 'Bodega B - Almacén 2'), -- Manzanas, 6000 kg, ubicación Bodega B
(40, 5, 2800, 'Bodega C - Almacén 1'), -- Duraznos, 2800 kg, ubicación Bodega C
(41, 6, 3250, 'Bodega C - Almacén 2'), -- Piñas, 3250 kg, ubicación Bodega C
(42, 7, 4200, 'Bodega D - Almacén 1'), -- Mangos, 4200 kg, ubicación Bodega D
(43, 1, 5100, 'Bodega A - Almacén 1'), -- Naranjas, 5100 kg, ubicación Bodega A
(44, 2, 5800, 'Bodega A - Almacén 2'), -- Mandarinas, 5800 kg, ubicación Bodega A
(45, 3, 2000, 'Bodega B - Almacén 1'), -- Fresas, 2000 kg, ubicación Bodega B
(46, 4, 5900, 'Bodega B - Almacén 2'), -- Manzanas, 5900 kg, ubicación Bodega B
(47, 5, 2700, 'Bodega C - Almacén 1'), -- Duraznos, 2700 kg, ubicación Bodega C
(48, 6, 3100, 'Bodega C - Almacén 2'), -- Piñas, 3100 kg, ubicación Bodega C
(49, 7, 4400, 'Bodega D - Almacén 1'), -- Mangos, 4400 kg, ubicación Bodega D
(50, 1, 4800, 'Bodega A - Almacén 1'); -- Naranjas, 4800 kg, ubicación Bodega A

INSERT INTO Ventas (id_venta, id_cliente, id_empleado, id_fruta, fecha, cantidad, subtotal, precio_unitario)
VALUES
(1, 1, 20, 1, '2022-01-10', 100, 5000, 50),
(2, 2, 20, 2, '2022-02-15', 200, 6000, 30),
(3, 3, 30, 3, '2022-03-05', 150, 3750, 25),
(4, 4, 30, 4, '2022-04-20', 120, 4800, 40),
(5, 5, 40, 5, '2022-05-12', 180, 5400, 30),
(6, 6, 40, 6, '2022-06-18', 50, 2500, 50),
(7, 7, 50, 7, '2022-07-23', 200, 10000, 50),
(8, 8, 50, 1, '2022-08-14', 80, 4000, 50),
(9, 9, 20, 2, '2022-09-07', 70, 2100, 30),
(10, 10, 20, 3, '2022-10-29', 100, 2500, 25),
(11, 11, 30, 4, '2022-11-11', 60, 2400, 40),
(12, 12, 30, 5, '2022-12-01', 90, 2700, 30),
(13, 13, 40, 6, '2023-01-10', 50, 2500, 50),
(14, 14, 40, 7, '2023-02-15', 150, 7500, 50),
(15, 15, 50, 1, '2023-03-05', 200, 10000, 50),
(16, 16, 50, 2, '2023-04-20', 120, 3600, 30),
(17, 17, 20, 3, '2023-05-12', 180, 4500, 25),
(18, 18, 20, 4, '2023-06-18', 100, 4000, 40),
(19, 19, 30, 5, '2023-07-23', 150, 4500, 30),
(20, 20, 30, 6, '2023-08-14', 120, 6000, 50),
(21, 21, 40, 7, '2023-09-07', 80, 4000, 50),
(22, 22, 40, 1, '2023-10-29', 60, 3000, 50),
(23, 23, 50, 2, '2023-11-11', 100, 3000, 30),
(24, 24, 50, 3, '2023-12-01', 150, 3750, 25),
(25, 25, 20, 4, '2024-01-10', 80, 3200, 40),
(26, 26, 20, 5, '2024-02-15', 200, 6000, 30),
(27, 27, 30, 6, '2024-03-05', 120, 6000, 50),
(28, 28, 30, 7, '2024-04-20', 150, 7500, 50),
(29, 29, 40, 1, '2024-05-12', 90, 4500, 50),
(30, 30, 40, 2, '2024-06-18', 80, 2400, 30),
(31, 31, 50, 3, '2024-07-23', 150, 3750, 25),
(32, 32, 50, 4, '2024-08-14', 100, 4000, 40),
(33, 33, 20, 5, '2024-09-07', 200, 6000, 30),
(34, 34, 20, 6, '2024-10-29', 120, 4800, 40),
(35, 35, 30, 7, '2024-11-11', 100, 5000, 50),
(36, 36, 30, 1, '2024-12-01', 90, 4500, 50),
(37, 37, 40, 2, '2022-01-12', 120, 3600, 30),
(38, 38, 40, 3, '2022-02-18', 150, 3750, 25),
(39, 39, 50, 4, '2022-03-05', 100, 4000, 40),
(40, 40, 50, 5, '2022-04-20', 200, 10000, 50),
(41, 41, 20, 6, '2022-05-12', 80, 3200, 40),
(42, 42, 20, 7, '2022-06-18', 90, 4500, 50),
(43, 43, 30, 1, '2022-07-23', 100, 5000, 50),
(44, 44, 30, 2, '2022-08-14', 120, 6000, 50),
(45, 45, 40, 3, '2022-09-07', 150, 7500, 50),
(46, 46, 40, 4, '2022-10-29', 80, 4000, 30),
(47, 47, 50, 5, '2022-11-11', 120, 3600, 30),
(48, 48, 50, 6, '2022-12-01', 200, 10000, 50),
(49, 49, 20, 7, '2023-01-10', 100, 2500, 25),
(50, 50, 20, 1, '2023-02-15', 150, 4500, 30);

-- Tareas para el cargo 'Gerente de Finca'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(1, 'Gestionar la planificación anual de cultivos', 1, '2023-01-15'),
(2, 'Supervisar el presupuesto para el año fiscal', 11, '2023-02-02');

-- Tareas para el cargo 'Supervisor de Cultivos'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(3, 'Supervisar la siembra de cultivos en el área A', 2, '2023-03-01'),
(4, 'Realizar un informe semanal sobre el estado de los cultivos', 12, '2023-03-04');

-- Tareas para el cargo 'Trabajador de Campo'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(5, 'Realizar la cosecha de la fruta en el campo B', 3, '2023-03-10'),
(6, 'Plantación de nuevos cultivos en la zona C', 13, '2023-03-12');

-- Tareas para el cargo 'Técnico en Maquinaria'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(7, 'Revisar y mantener las máquinas de riego', 4, '2023-03-15'),
(8, 'Arreglar maquinaria agrícola en la zona sur', 14, '2023-03-18');

-- Tareas para el cargo 'Administrador de Inventarios'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(9, 'Revisar inventario de productos agrícolas', 5, '2023-04-01'),
(10, 'Actualizar registros de compras de insumos', 15, '2023-04-10');

-- Tareas para el cargo 'Asistente de Ventas'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(11, 'Atender pedidos de clientes', 6, '2023-04-12'),
(12, 'Colaborar con la creación de promociones de ventas', 16, '2023-04-20');

-- Tareas para el cargo 'Cajero de Bodega'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(13, 'Procesar pagos de ventas diarias', 7, '2023-04-25'),
(14, 'Realizar el cierre de caja al final del día', 17, '2023-05-01');

-- Tareas para el cargo 'Especialista en Riego'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(15, 'Verificar la presión del sistema de riego', 8, '2023-05-05'),
(16, 'Realizar mantenimiento preventivo del sistema de riego', 18, '2023-05-10');

-- Tareas para el cargo 'Encargado de Logística'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(17, 'Coordinar la distribución de productos para la venta', 9, '2023-05-15'),
(18, 'Gestionar los transportes para la entrega de pedidos', 19, '2023-05-20');

-- Tareas para el cargo 'Vendedor'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(19, 'Atender a los clientes en el punto de venta', 10, '2023-05-25'),
(20, 'Promocionar productos en las redes sociales', 20, '2023-06-01');

-- Tareas para el cargo 'Gerente de Finca'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(21, 'Reunión de evaluación trimestral de cultivos', 1, '2023-06-05'),
(22, 'Evaluar la efectividad de nuevas tecnologías aplicadas', 11, '2023-06-15');

-- Tareas para el cargo 'Supervisor de Cultivos'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(23, 'Inspeccionar las condiciones de las plantas', 2, '2023-06-07'),
(24, 'Supervisar el uso adecuado de fertilizantes', 12, '2023-06-18');

-- Tareas para el cargo 'Trabajador de Campo'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(25, 'Realizar la cosecha de fruta en campo C', 3, '2023-06-12'),
(26, 'Limpieza de los pasillos de los cultivos', 13, '2023-06-20');

-- Tareas para el cargo 'Técnico en Maquinaria'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(27, 'Revisión de maquinaria de cosecha', 4, '2023-06-22'),
(28, 'Mantenimiento preventivo de tractores', 14, '2023-06-25');

-- Tareas para el cargo 'Administrador de Inventarios'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(29, 'Realizar control de inventario de semillas', 5, '2023-07-01'),
(30, 'Actualizar registros de materiales de construcción', 15, '2023-07-05');

-- Tareas para el cargo 'Asistente de Ventas'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(31, 'Ayudar con la organización de las promociones de temporada', 6, '2023-07-10'),
(32, 'Atender a clientes en la tienda', 16, '2023-07-15');

-- Tareas para el cargo 'Cajero de Bodega'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(33, 'Revisar y registrar pagos de ventas al final del día', 7, '2023-07-20'),
(34, 'Verificar que las existencias de productos estén bien organizadas', 17, '2023-07-25');

-- Tareas para el cargo 'Especialista en Riego'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(35, 'Revisar los niveles de agua en los sistemas de riego', 8, '2023-08-01'),
(36, 'Supervisar el mantenimiento de los equipos de riego automático', 18, '2023-08-03');

-- Tareas para el cargo 'Encargado de Logística'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(37, 'Planificar el transporte para entrega de productos', 9, '2023-08-08'),
(38, 'Supervisar los almacenes de productos terminados', 19, '2023-08-10');

-- Tareas para el cargo 'Vendedor'
INSERT INTO Tarea (id_tarea, descripción, id_empleado, fecha_asignación) VALUES
(39, 'Vender productos a clientes en el punto de venta', 10, '2023-08-15'),
(40, 'Promocionar productos en la página web y redes sociales', 20, '2023-08-18');

INSERT INTO Ingresos_gastos (id_compra, id_venta, inicio_mes, Ingresos, fin_mes, ganancia_final, gastos)
VALUES
(1, 5, '2022-01-01', 1500000, '2022-01-31', 500000, 1000000),
(2, 10, '2022-02-01', 1800000, '2022-02-28', 600000, 1200000),
(3, 15, '2022-03-01', 2000000, '2022-03-31', 700000, 1300000),
(4, 20, '2022-04-01', 2200000, '2022-04-30', 800000, 1400000),
(5, 25, '2022-05-01', 2500000, '2022-05-31', 900000, 1600000),
(6, 30, '2022-06-01', 2700000, '2022-06-30', 1000000, 1700000),
(7, 35, '2022-07-01', 3000000, '2022-07-31', 1100000, 1900000),
(8, 40, '2022-08-01', 3200000, '2022-08-31', 1200000, 2000000),
(9, 45, '2022-09-01', 3500000, '2022-09-30', 1300000, 2200000),
(10, 50, '2022-10-01', 3800000, '2022-10-31', 1400000, 2400000),
(11, 1, '2023-01-01', 4000000, '2023-01-31', 1500000, 2500000),
(12, 5, '2023-02-01', 4200000, '2023-02-28', 1600000, 2600000),
(13, 10, '2023-03-01', 4500000, '2023-03-31', 1700000, 2800000),
(14, 15, '2023-04-01', 4800000, '2023-04-30', 1800000, 3000000),
(15, 20, '2023-05-01', 5000000, '2023-05-31', 2000000, 3000000),
(16, 25, '2023-06-01', 5300000, '2023-06-30', 2100000, 3200000),
(17, 30, '2023-07-01', 5500000, '2023-07-31', 2200000, 3300000),
(18, 35, '2023-08-01', 5800000, '2023-08-31', 2300000, 3500000),
(19, 40, '2023-09-01', 6000000, '2023-09-30', 2500000, 3500000),
(20, 45, '2023-10-01', 6200000, '2023-10-31', 2600000, 3600000),
(21, 50, '2023-11-01', 6500000, '2023-11-30', 2700000, 3800000),
(22, 5, '2023-12-01', 6700000, '2023-12-31', 2800000, 3900000),
(23, 10, '2024-01-01', 7000000, '2024-01-31', 3000000, 4000000),
(24, 15, '2024-02-01', 7300000, '2024-02-29', 3200000, 4100000),
(25, 20, '2024-03-01', 7500000, '2024-03-31', 3300000, 4200000),
(26, 25, '2024-04-01', 7700000, '2024-04-30', 3400000, 4300000),
(27, 30, '2024-05-01', 8000000, '2024-05-31', 3500000, 4500000),
(28, 35, '2024-06-01', 8300000, '2024-06-30', 3700000, 4600000),
(29, 40, '2024-07-01', 8500000, '2024-07-31', 3800000, 4700000),
(30, 45, '2024-08-01', 8800000, '2024-08-31', 3900000, 4900000),
(31, 50, '2024-09-01', 9000000, '2024-09-30', 4000000, 5000000),
(32, 1, '2024-10-01', 9300000, '2024-10-31', 4200000, 5100000);