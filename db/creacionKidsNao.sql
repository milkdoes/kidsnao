-- Archivo para crear la base de datos. Esto con credenciales de acceso y tablas.

CREATE DATABASE IF NOT EXISTS kidsnao;

USE kidsnao;

CREATE USER IF NOT EXISTS 'UsuarioKidsNao'@'localhost' IDENTIFIED BY 'UsuarioKidsNao';

GRANT ALL ON kidsnao.* TO 'UsuarioKidsNao'@'localhost';

FLUSH PRIVILEGES;

USE kidsnao;

-- TABLAS.
CREATE TABLE IF NOT EXISTS sesion(
	Id_sesion BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT
	, FechaTiempo DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
	, Resultado TINYINT(1) NULL
	, Comentario TEXT NULL
	, CREACION DATETIME NULL DEFAULT CURRENT_TIMESTAMP
	, MODIFICACION DATETIME NULL ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS infante(
	Id_infante BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT
	, Nombre VARCHAR(255) NOT NULL
	, FechaNacimiento DATE NULL
	, CREACION DATETIME NULL DEFAULT CURRENT_TIMESTAMP
	, MODIFICACION DATETIME NULL ON UPDATE CURRENT_TIMESTAMP	
);

CREATE TABLE IF NOT EXISTS sesion_infante(
	Id_sesion BIGINT NOT NULL REFERENCES sesion(Id_sesion)
	, Id_infante BIGINT NOT NULL REFERENCES infante(Id_infante)
	, CREACION DATETIME NULL DEFAULT CURRENT_TIMESTAMP
	, MODIFICACION DATETIME NULL ON UPDATE CURRENT_TIMESTAMP	
);

CREATE TABLE IF NOT EXISTS involucrado(
	Id_involucrado BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT
	, Nombre VARCHAR(255) NOT NULL
	, Cargo VARCHAR(255) NULL
	, FechaNacimiento DATE NULL
	, CREACION DATETIME NULL DEFAULT CURRENT_TIMESTAMP
	, MODIFICACION DATETIME NULL ON UPDATE CURRENT_TIMESTAMP	
);

CREATE TABLE IF NOT EXISTS sesion_involucrado(
	Id_sesion BIGINT NOT NULL REFERENCES sesion(Id_sesion)
	, Id_involucrado BIGINT NOT NULL REFERENCES involucrado(Id_involucrado)
	, CREACION DATETIME NULL DEFAULT CURRENT_TIMESTAMP
	, MODIFICACION DATETIME NULL ON UPDATE CURRENT_TIMESTAMP	
);