-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `sp_cliente_insertar`(
        IN  _nombre varchar(45), 
        IN  _tipo varchar(45), 
        IN  _contrasenia varchar(45)     )
BEGIN

INSERT INTO cliente
         (
           nombre                    , 
           tipo                      , 
           contrasenia                 
         )
    VALUES 
         ( 
           _nombre                    , 
           _tipo                      , 
           _contrasenia                   
         ) ;
END

-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `sp_cliente_actualizar`(
        IN _id INT,
        IN  _nombre varchar(45), 
        IN  _tipo varchar(45), 
        IN  _contrasenia varchar(45)   
)
BEGIN
    UPDATE cliente
    SET    
           nombre  = _nombre ,
           tipo = _tipo,
           contrasenia = _contrasenia
    WHERE  idCliente = _id ; 
END

-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `sp_cliente_obtener`(
    IN id INT
)
BEGIN

    SELECT  nombre, tipo, contrasenia from cliente WHERE idCliente = id;
    
END

-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `sp_cliente_eliminar`(
    IN id INT
)
BEGIN
    Delete from cliente where idCliente  = id;
END

-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `sp_pelicula_insertar`(
    IN _nombre varchar(45),
    IN _nombreDir varchar(45),
    IN _fecha DATE,
    IN _cat varchar(45),
    IN _sinapis varchar(1000)
)
BEGIN

    INSERT INTO pelicula(nombre, nombreDirector, fecha, categoria, sinapsis)
    VALUES(_nombre,_nombreDir,_fecha,_cat,_sinapis);
END

-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `sp_pelicula_actualizar`(
    IN _idPelicula INT,
    IN _nombre VARCHAR(45),
    IN _nombreDir VARCHAR(45),
    IN _fecha date,
    IN _cat VARCHAR(45),
    IN _sinapsis VARCHAR(1000)
)
BEGIN

    UPDATE pelicula
    
    SET
        nombre = _nombre,
        nombreDirector = _nombreDir,
        fecha = _fecha,
        categoria = _cat,
        sinapsis = _sinapsis
        
    WHERE
        idPelicula = _idPelicula;
END

-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `sp_pelicula_obtener`(
    IN id INT
)
BEGIN

    SELECT nombre,nombreDirector,fecha,categoria,sinapsis from pelicula where idPelicual = id;
    
END

-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE PROCEDURE `sp_pelicula_eliminar`(
    IN id INT
)
BEGIN
    delete from pelicula where idPelicual = id;
END


)