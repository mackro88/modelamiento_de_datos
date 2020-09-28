-- Crear base de datos caso1
CREATE DATABASE caso2;
\c caso2;
-- Crear tablas
CREATE TABLE alumno (
    rut VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    rut_alumno VARCHAR(10) NOT NULL UNIQUE,
    FOREIGN KEY (rut_alumno) REFERENCES alumno(rut)
);
CREATE TABLE prueba (
    id SERIAL PRIMARY KEY,
    rut_alumno VARCHAR(10) NOT NULL UNIQUE,
    FOREIGN KEY (rut_alumno) REFERENCES alumno(rut)
);
CREATE TABLE departamento (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
CREATE TABLE profesor (
    nombre VARCHAR(50) NOT NULL,
    rut VARCHAR(10) PRIMARY KEY,
    id_prueba INT NOT NULL UNIQUE,
    id_departamento INT NOT NULL UNIQUE,
    FOREIGN KEY (id_prueba) REFERENCES prueba(id),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);
