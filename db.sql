CREATE DATABASE tallerSQL;
USE tallerSQL;

CREATE TABLE Clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);
CREATE TABLE UbicacionCliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    direccion VARCHAR(255),
    ciudad_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (ciudad_id) REFERENCES Ciudades(id)
);

CREATE TABLE TipoTelefono( 
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20)
);

CREATE TABLE TelefonosCliente(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    numero_tel VARCHAR(15),
    tipo_id INT,
    FOREIGN KEY (tipo_id) REFERENCES TipoTelefono(id),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE Email(
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    email VARCHAR(50),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

CREATE TABLE Paises (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) UNIQUE
);

CREATE TABLE Estados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    pais_id INT,
    FOREIGN KEY (pais_id) REFERENCES Paises(id)
);

CREATE TABLE Ciudades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    estado_id INT,
    codigo_postal VARCHAR(10),
    FOREIGN KEY (estado_id) REFERENCES Estados(id)
);

CREATE TABLE Entidad(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

CREATE TABLE Ubicaciones(
    id INT PRIMARY KEY AUTO_INCREMENT,
    entidad_id INT UNIQUE,
    direccion VARCHAR(255),
    ciudad_id INT,
    FOREIGN KEY (entidad_id) REFERENCES Entidad(id),
    FOREIGN KEY (ciudad_id) REFERENCES Ciudades(id)
);

CREATE TABLE puestos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

CREATE TABLE DatosEmpleados(
     id INT PRIMARY KEY AUTO_INCREMENT,
     nombre VARCHAR(100),
     puesto_id INT,
     salario FLOAT(10,2),
     fecha_contratacion DATE,
     FOREIGN KEY (puesto_id) REFERENCES puestos(id)
);

CREATE TABLE Proveedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

CREATE TABLE ContactoProveedores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    proveedor_id INT,
    contacto VARCHAR(100),
    telefono VARCHAR(20),
    direccion VARCHAR(255),
    FOREIGN KEY (proveedor_id) REFERENCES Proveedores(id)
);

CREATE TABLE TiposProductos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_nombre VARCHAR(100),
    descripcion TEXT
);

CREATE TABLE Productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    proveedor_id INT,
    tipo_id INT,
    FOREIGN KEY (proveedor_id) REFERENCES Proveedores(id),
    FOREIGN KEY (tipo_id) REFERENCES TiposProductos(id)
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    producto_id INT,
    fecha DATE,
    precio DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

CREATE TABLE DetallesPedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    producto_id INT,
    precio DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

CREATE TABLE HistorialPedidos(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_modificacion TIMESTAMP,
    pedido_id INT,
    cantidad_salida INT,
    cantidad_entrada INT,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id)
);

