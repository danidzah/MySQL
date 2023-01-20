-- MySQL Script generated by MySQL Workbench
-- Fri Jan 20 12:32:59 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Db_Blog_Pessoal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Db_Blog_Pessoal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Db_Blog_Pessoal` DEFAULT CHARACTER SET utf8 ;
USE `Db_Blog_Pessoal` ;

-- -----------------------------------------------------
-- Table `Db_Blog_Pessoal`.`Tb_Temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Db_Blog_Pessoal`.`Tb_Temas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `descrição` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Db_Blog_Pessoal`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Db_Blog_Pessoal`.`tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(255) NOT NULL,
  `Usuario` VARCHAR(255) NOT NULL,
  `Senha` VARCHAR(255) NOT NULL,
  `Foto` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Db_Blog_Pessoal`.`tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Db_Blog_Pessoal`.`tb_postagens` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `texto` VARCHAR(1000) NOT NULL,
  `data` DATE NULL,
  `Temas_id` BIGINT NULL,
  `usuarios_id` BIGINT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_postagens_Tb_Temas_idx` (`Temas_id` ASC) VISIBLE,
  INDEX `fk_tb_postagens_tb_usuarios1_idx` (`usuarios_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagens_Tb_Temas`
    FOREIGN KEY (`Temas_id`)
    REFERENCES `Db_Blog_Pessoal`.`Tb_Temas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagens_tb_usuarios1`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `Db_Blog_Pessoal`.`tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
