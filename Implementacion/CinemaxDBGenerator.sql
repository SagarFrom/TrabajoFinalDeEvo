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



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
