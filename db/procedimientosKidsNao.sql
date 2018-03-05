-- Archivo para definir los procedimientos de la base de datos.
USE kidsnao;

DROP PROCEDURE IF EXISTS GuardarInfante;

-- Procedimiento para guardar un nuevo infante.
DELIMITER $$
CREATE PROCEDURE GuardarInfante (
    IN nombre VARCHAR(255)
    , IN fechaNacimiento DATE
) BEGIN
    -- Definir identificador por defecto del infante.
    DECLARE idInfante BIGINT DEFAULT 0;

    -- Continuar con guardado si el nombre es valido.
    IF (nombre IS NOT NULL) THEN
        BEGIN
            -- Verificar si existe. Si no, insertar.
            IF ((SELECT COUNT(inf.Id_infante) FROM infante AS inf WHERE inf.Nombre = nombre LIMIT 1) < 1) THEN
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

    -- Seleccionar el identificador del infante.
    SELECT idInfante AS 'Id_infante';
END $$
DELIMITER ;
