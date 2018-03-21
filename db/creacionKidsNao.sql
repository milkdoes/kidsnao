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
	Id_sesion BIGINT NOT NULL
	, Id_infante BIGINT NOT NULL
	, CREACION DATETIME NULL DEFAULT CURRENT_TIMESTAMP
	, MODIFICACION DATETIME NULL ON UPDATE CURRENT_TIMESTAMP
	, CONSTRAINT FK_Sesion_SesionInfante FOREIGN KEY (Id_sesion)
	REFERENCES sesion(Id_sesion)
	, CONSTRAINT FK_Infante_InfanteSesion FOREIGN KEY (Id_infante)
	REFERENCES infante(Id_infante)
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
	Id_sesion BIGINT NOT NULL
	, Id_involucrado BIGINT NOT NULL
	, CREACION DATETIME NULL DEFAULT CURRENT_TIMESTAMP
	, MODIFICACION DATETIME NULL ON UPDATE CURRENT_TIMESTAMP
	, CONSTRAINT FK_Sesion_SesionInvolucrado FOREIGN KEY (Id_sesion)
	REFERENCES sesion(Id_sesion)
	, CONSTRAINT FK_Involucrado_SesionInvolucrado FOREIGN KEY (Id_involucrado)
	REFERENCES involucrado(Id_involucrado)
);
