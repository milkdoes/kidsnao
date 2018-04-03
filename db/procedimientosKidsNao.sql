-- Archivo para definir los procedimientos de la base de datos.
USE kidsnao;

DROP PROCEDURE IF EXISTS GuardarInfante;

-- Procedimiento para guardar un nuevo infante.
DELIMITER $$
CREATE PROCEDURE GuardarInfante (
    IN nombre VARCHAR(255)
    , IN fechaNacimiento DATE
	, OUT idInfante BIGINT
) BEGIN
    -- Continuar con guardado si el nombre es valido.
    IF (nombre IS NOT NULL) THEN
        BEGIN
            -- Verificar si existe. Si no, insertar.
			IF ((SELECT COUNT(inf.Id_infante) FROM infante AS inf WHERE
				inf.Nombre = nombre LIMIT 1) < 1) THEN
                BEGIN
                    INSERT INTO infante(Nombre, FechaNacimiento)
                    VALUES(nombre, fechaNacimiento);
                END;
            END IF;
        END;

        -- Definir identificador del infante.
        SET idInfante = (SELECT inf.Id_infante FROM infante AS inf WHERE
            inf.Nombre = nombre LIMIT 1);
    END IF;

	IF (idInfante IS NULL) THEN
		BEGIN
			SET idInfante = 0;
		END;
	END IF;

    -- Seleccionar el identificador del infante.
    SELECT idInfante AS 'Id_infante';
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS GuardarSesion;

-- Procedimiento para guardar una sesion.
DELIMITER $$
CREATE PROCEDURE GuardarSesion (
	IN nombreInfante VARCHAR(255)
	, IN fechaTiempo DATETIME
    , IN resultado TINYINT(1)
    , IN comentario TEXT
) BEGIN
    -- Definir identificador por defecto de la sesion.
    DECLARE idSesion BIGINT DEFAULT 0;

	-- Verificar si existe. Si no, insertar.
	IF ((SELECT COUNT(ses.Id_sesion) FROM sesion AS ses WHERE
		ses.FechaTiempo = fechaTiempo LIMIT 1) < 1) THEN
		BEGIN
			INSERT INTO sesion(Resultado, Comentario)
			VALUES(resultado, comentario);
		END;
	END IF;

	-- Definir identificador de la sesion.
	SET idSesion = (SELECT ses.Id_sesion FROM sesion AS ses WHERE
		ses.FechaTiempo = fechaTiempo LIMIT 1);

	-- Guardar inclusion de infante en sesion si se envio uno.
	IF (nombreInfante IS NOT NULL) THEN
		BEGIN
			DECLARE idInfante BIGINT DEFAULT 0;

			-- Definir identificador del infante.
			CALL GuardarInfante(nombreInfante, NULL, idInfante);

			-- Guardar inclusion en sesion si el identificador del infante es valido.
			IF (idInfante IS NOT NULL AND idInfante != 0) THEN
				BEGIN
					INSERT INTO sesion_infante(Id_sesion, Id_infante)
					VALUES(idSesion, idInfante);
				END;
			END IF;
		END;
	END IF;

    -- Seleccionar el identificador del sesion.
    SELECT idSesion AS 'Id_sesion';
END $$
DELIMITER ;
