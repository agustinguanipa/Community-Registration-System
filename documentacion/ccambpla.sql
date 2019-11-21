-- MySQL Script generated by MySQL Workbench
-- Wed Nov 20 21:50:27 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ccambpla
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ccambpla
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ccambpla` DEFAULT CHARACTER SET utf8 ;
USE `ccambpla` ;

-- -----------------------------------------------------
-- Table `ccambpla`.`tab_tip`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ccambpla`.`tab_tip` (
  `ident_tip` INT NOT NULL AUTO_INCREMENT,
  `nombr_tip` VARCHAR(45) NULL,
  PRIMARY KEY (`ident_tip`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ccambpla`.`tab_per`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ccambpla`.`tab_per` (
  `ident_per` INT NOT NULL AUTO_INCREMENT,
  `cedul_per` INT(11) NULL,
  `nombr_per` VARCHAR(45) NULL,
  `apeli_per` VARCHAR(45) NULL,
  `fecna_per` DATE NULL,
  `telem_per` VARCHAR(45) NULL,
  `telec_per` VARCHAR(45) NULL,
  `email_per` VARCHAR(45) NULL,
  `direc_per` VARCHAR(200) NULL,
  `tifam_per` VARCHAR(45) NULL,
  `tibom_per` VARCHAR(45) NULL,
  `seria_per` VARCHAR(45) NULL,
  `usuar_per` VARCHAR(45) NULL,
  `contr_per` VARCHAR(45) NULL,
  `statu_per` CHAR(1) NULL,
  `ident_tip` INT NOT NULL,
  PRIMARY KEY (`ident_per`),
  INDEX `fk_tab_per_tab_tip1_idx` (`ident_tip` ASC),
  CONSTRAINT `fk_tab_per_tab_tip1`
    FOREIGN KEY (`ident_tip`)
    REFERENCES `ccambpla`.`tab_tip` (`ident_tip`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ccambpla`.`tab_ref`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ccambpla`.`tab_ref` (
  `ident_ref` INT NOT NULL AUTO_INCREMENT,
  `banco_ref` VARCHAR(45) NULL,
  `monto_ref` FLOAT NULL,
  PRIMARY KEY (`ident_ref`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ccambpla`.`tab_ser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ccambpla`.`tab_ser` (
  `ident_ser` INT NOT NULL AUTO_INCREMENT,
  `nombr_ser` VARCHAR(45) NULL,
  PRIMARY KEY (`ident_ser`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ccambpla`.`tab_reg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ccambpla`.`tab_reg` (
  `ident_reg` INT NOT NULL,
  `fecre_reg` VARCHAR(45) NULL,
  `ident_ref` INT NOT NULL,
  `ident_ser` INT NOT NULL,
  PRIMARY KEY (`ident_reg`),
  INDEX `fk_tab_ref1_idx` (`ident_ref` ASC),
  INDEX `fk_tab_ser1_idx` (`ident_ser` ASC),
  CONSTRAINT `fk_tab_ref1`
    FOREIGN KEY (`ident_ref`)
    REFERENCES `ccambpla`.`tab_ref` (`ident_ref`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tab_ser1`
    FOREIGN KEY (`ident_ser`)
    REFERENCES `ccambpla`.`tab_ser` (`ident_ser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ccambpla`.`tab_fam`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ccambpla`.`tab_fam` (
  `ident_fam` INT NOT NULL AUTO_INCREMENT,
  `ident_per` INT NOT NULL,
  `ident_reg` INT NOT NULL,
  PRIMARY KEY (`ident_fam`),
  INDEX `fk_tab_per1_idx` (`ident_per` ASC),
  INDEX `fk_tab_reg1_idx` (`ident_reg` ASC),
  CONSTRAINT `fk_tab_per1`
    FOREIGN KEY (`ident_per`)
    REFERENCES `ccambpla`.`tab_per` (`ident_per`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tab_reg1`
    FOREIGN KEY (`ident_reg`)
    REFERENCES `ccambpla`.`tab_reg` (`ident_reg`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ccambpla`.`tab_not`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ccambpla`.`tab_not` (
  `ident_not` INT NOT NULL AUTO_INCREMENT,
  `titul_not` VARCHAR(45) NULL,
  `descr_not` VARCHAR(45) NULL,
  `image_not` VARCHAR(250) NULL,
  `fecpu_not` VARCHAR(45) NULL,
  `statu_not` VARCHAR(45) NULL,
  PRIMARY KEY (`ident_not`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
