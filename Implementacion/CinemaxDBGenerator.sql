SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `tipo` VARCHAR(45) NULL ,
  `contrasenia` VARCHAR(45) NULL ,
  PRIMARY KEY (`idCliente`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pelicula`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Pelicula` (
  `idPelicula` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `nombreDirector` VARCHAR(45) NULL ,
  `fecha` DATE NULL ,
  `categoria` VARCHAR(45) NULL ,
  `sinapsis` VARCHAR(1000) NULL ,
  PRIMARY KEY (`idPelicula`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pedido`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Pedido` (
  `idPedido` INT NOT NULL ,
  `Cliente_idCliente` INT NOT NULL ,
  `precioTotal` DOUBLE NULL ,
  PRIMARY KEY (`idPedido`) ,
  INDEX `fk_Pedido_Cliente1` (`Cliente_idCliente` ASC) ,
  CONSTRAINT `fk_Pedido_Cliente1`
    FOREIGN KEY (`Cliente_idCliente` )
    REFERENCES `mydb`.`Cliente` (`idCliente` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ejemplar`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Ejemplar` (
  `idEjemplar` INT NOT NULL AUTO_INCREMENT ,
  `Pelicula_idPelicula` INT NOT NULL ,
  `Pedido_idPedido` INT NOT NULL ,
  `estado` VARCHAR(45) NULL ,
  `precio` DOUBLE NULL ,
  `fechaVencimiento` DATE NULL ,
  `fechaPrestamo` DATE NULL ,
  PRIMARY KEY (`idEjemplar`) ,
  INDEX `fk_Ejemplar_Pelicula` (`Pelicula_idPelicula` ASC) ,
  INDEX `fk_Ejemplar_Pedido1` (`Pedido_idPedido` ASC) ,
  CONSTRAINT `fk_Ejemplar_Pelicula`
    FOREIGN KEY (`Pelicula_idPelicula` )
    REFERENCES `mydb`.`Pelicula` (`idPelicula` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ejemplar_Pedido1`
    FOREIGN KEY (`Pedido_idPedido` )
    REFERENCES `mydb`.`Pedido` (`idPedido` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cliente_insertar`(
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cliente_actualizar`(
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cliente_obtener`(
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cliente_eliminar`(
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pelicula_insertar`(
    IN _nombre varchar(45),
    IN _nombreDir varchar(45),
    IN _fecha DATE,
    IN _cat varchar(45),
    IN _sinap varchar(1000)
)
BEGIN

    INSERT INTO pelicula(nombre, nombreDirector, fecha, categoria, sinapsis)
    VALUES(_nombre,_nombreDir,_fecha,_cat,_sinapsis);
END

-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pelicula_actualizar`(
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pelicula_obtener`(
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pelicula_eliminar`(
    IN id INT
)
BEGIN
    delete from pelicula where idPelicual = id;
END


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
