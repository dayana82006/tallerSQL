-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (nombre) VALUES
('Juan Pérez'),
('Ana López'),
('Carlos Sánchez'),
('Marta Rodríguez');

-- Insertar datos en la tabla TipoTelefono
INSERT INTO TipoTelefono (nombre) VALUES
('Móvil'),
('Casa'),
('Oficina');

-- Insertar datos en la tabla TelefonosCliente
INSERT INTO TelefonosCliente (cliente_id, numero_tel, tipo_id) VALUES
(1, '555-1234', 1),
(1, '555-5678', 2),
(2, '555-8765', 1),
(3, '555-4321', 3);

-- Insertar datos en la tabla Email
INSERT INTO Email (cliente_id, email) VALUES
(1, 'juan.perez@email.com'),
(2, 'ana.lopez@email.com'),
(3, 'carlos.sanchez@email.com');

-- Insertar datos en la tabla Paises
INSERT INTO Paises (nombre) VALUES
('México'),
('España'),
('Colombia');

-- Insertar datos en la tabla Estados
INSERT INTO Estados (nombre, pais_id) VALUES
('Jalisco', 1),
('Madrid', 2),
('Antioquia', 3);

-- Insertar datos en la tabla Ciudades
INSERT INTO Ciudades (nombre, estado_id, codigo_postal) VALUES
('Guadalajara', 1, '44100'),
('Madrid', 2, '28001'),
('Medellín', 3, '050010');

-- Insertar datos en la tabla Entidad
INSERT INTO Entidad (nombre) VALUES
('Hospital General'),
('Escuela Primaria'),
('Supermercado');

-- Insertar datos en la tabla Ubicaciones
INSERT INTO Ubicaciones (entidad_id, direccion, ciudad_id) VALUES
(1, 'Av. Juárez 123', 1),
(2, 'Calle Falsa 456', 2),
(3, 'Carrera 10 #45-67', 3);

-- Insertar datos en la tabla puestos
INSERT INTO puestos (nombre) VALUES
('Gerente'),
('Secretario'),
('Vendedor');

-- Insertar datos en la tabla DatosEmpleados
INSERT INTO DatosEmpleados (nombre, puesto_id, salario, fecha_contratacion) VALUES
('Luis García', 1, 5000.00, '2023-01-15'),
('Laura Martínez', 2, 3000.00, '2024-02-20'),
('Juan Ramírez', 3, 2500.00, '2022-09-10');

-- Insertar datos en la tabla Proveedores
INSERT INTO Proveedores (nombre) VALUES
('Proveedor A'),
('Proveedor B'),
('Proveedor C');

-- Insertar datos en la tabla ContactoProveedores
INSERT INTO ContactoProveedores (proveedor_id, contacto, telefono, direccion) VALUES
(1, 'Carlos Fernández', '555-0101', 'Av. Central 456'),
(2, 'María López', '555-2121', 'Calle 123'),
(3, 'Jorge Pérez', '555-3131', 'Carrera 5 #67');

-- Insertar datos en la tabla TiposProductos
INSERT INTO TiposProductos (tipo_nombre, descripcion) VALUES
('Electrónica', 'Productos electrónicos como celulares, computadoras, etc.'),
('Ropa', 'Ropa y accesorios de moda'),
('Comida', 'Alimentos y productos comestibles');

-- Insertar datos en la tabla Productos
INSERT INTO Productos (nombre, precio, proveedor_id, tipo_id) VALUES
-- Proveedor 1 (id=1) con más de 5 productos
('Smartphone', 1500.00, 1, 1),
('Laptop', 2500.00, 1, 1),
('Televisor', 3000.00, 1, 1),
('Tablet', 800.00, 1, 1),
('Cámara', 1200.00, 1, 1),
('Auriculares', 150.00, 1, 1),
('Micrófono', 250.00, 1, 1),
('Proyector', 3500.00, 1, 1),
('Reloj', 200.00, 1, 1),
('Smartwatch', 250.00, 1, 1),
('Bicicleta', 300.00, 1, 1),

-- Proveedor 2 (id=2) con algunos productos de ropa y muebles
('Camiseta', 25.00, 2, 2),
('Pantalón', 40.00, 2, 2),
('Chaqueta', 60.00, 2, 2),
('Zapatos', 80.00, 2, 2),
('Sudadera', 45.00, 2, 2),
('Bufanda', 20.00, 2, 2),


-- Proveedor 3 (id=3) con productos alimenticios
('Arroz', 10.00, 3, 3),
('Frijoles', 15.00, 3, 3),
('Azúcar', 12.00, 3, 3),
('Pasta', 8.00, 3, 3),
('Lentejas', 9.00, 3, 3),
('Cereal', 7.00, 3, 3),
('Harina', 5.00, 3, 3);



-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (cliente_id, producto_id, fecha, precio) VALUES
(1, 1, '2025-03-15', 1500.00),
(2, 3, '2025-03-16', 25.00),
(3, 5, '2025-03-17', 10.00);

-- Insertar datos en la tabla DetallesPedido
INSERT INTO DetallesPedido (pedido_id, producto_id, precio) VALUES
(1, 1, 1500.00),
(2, 3, 25.00),
(3, 5, 10.00);

-- Insertar datos en la tabla HistorialPedidos
INSERT INTO HistorialPedidos (fecha_modificacion, pedido_id, cantidad_salida, cantidad_entrada) VALUES
('2025-03-20 12:00:00', 1, 1, 0),
('2025-03-20 12:30:00', 2, 1, 0),
('2025-03-20 13:00:00', 3, 1, 0);