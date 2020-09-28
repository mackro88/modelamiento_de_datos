-- Crear base de datos caso1
CREATE DATABASE caso1;
\c caso1;
-- Crear tablas
CREATE TABLE departamento (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
CREATE TABLE trabajador (
    nombre VARCHAR(50) NOT NULL,
    rut VARCHAR(10) PRIMARY KEY,
    direccion VARCHAR(150) NOT NULL,
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);
CREATE TABLE liquidacion (
    id SERIAL PRIMARY KEY,
    rut_trabajador VARCHAR(10) NOT NULL UNIQUE,
    FOREIGN KEY (rut_trabajador) REFERENCES trabajador(rut)
);