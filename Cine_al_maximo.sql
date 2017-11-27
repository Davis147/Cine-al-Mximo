CREATE DATABASE cine_al_maximo DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE cine_al_maximo;

CREATE TABLE Cuenta (
    id_cuenta INT NOT NULL AUTO_INCREMENT,
    clave BLOB NULL,
    PRIMARY KEY (id_cuenta)
);

CREATE TABLE Usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT,
    id_cuenta INT NOT NULL,
    nombre VARCHAR(255) NULL,
    apellido VARCHAR(255) null,
    fecha_de_nacimiento DATE NULL,
    edad int null,
    telefono VARCHAR (10) null,
    nickname VARCHAR(10) null,
    PRIMARY KEY (id_usuario)
);
    

CREATE TABLE Cines(
    id_cines INT NOT NULL AUTO_INCREMENT,
    cine VARCHAR(250) NULL,
    direccionGoogle VARCHAR(1000) NULL,    
    PRIMARY KEY (id_cines)
);

CREATE TABLE Promocion(
    id_promocion INT NOT NULL AUTO_INCREMENT,
    id_cines INT NULL,
    descripcion VARCHAR(1000) NULL,
    fechaDesde DATE NULL,
    fechaHasta DATE NULL,
    PRIMARY KEY (id_promocion)
);

CREATE TABLE Peliculas(
    id_pelicula INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(250) NULL,
    foto VARCHAR(250) NULL,
    idGeneroPelicula varchar(255)null,
    PRIMARY KEY (id_pelicula)
);

CREATE TABLE Cartelera(
    id_cartelera INT NOT NULL AUTO_INCREMENT,
    id_cines INT NULL,
    id_pelicula VARCHAR(250) NULL,
    PRIMARY KEY (id_cartelera)
);

CREATE TABLE Horario(
    id_horario INT NOT NULL AUTO_INCREMENT,
    id_cartelera INT NOT NULL, 
    HoraInicio TIME NULL,
    HoraFin TIME NULL,
    PRIMARY KEY (id_horario)
);

CREATE TABLE GeneroPelicula(
    id_GeneroPelicula INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(250) NULL,
    edadminima INT NULL,
    PRIMARY KEY (id_GeneroPelicula)
);