use finca_frutal;

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

