-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Contact Manger
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Contact Manger
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Contact Manger` DEFAULT CHARACTER SET utf8 ;
USE `Contact Manger` ;

-- -----------------------------------------------------
-- Table `Contact Manger`.`User Information`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Contact Manger`.`User Information` ;

CREATE TABLE IF NOT EXISTS `Contact Manger`.`User Information` (
  `First Name` VARCHAR(45) NOT NULL,
  `Last Name` VARCHAR(45) NOT NULL,
  `Username` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `Email Adress` VARCHAR(45) NOT NULL,
  `user id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user id`),
  UNIQUE INDEX `Username_UNIQUE` (`Username` ASC),
  UNIQUE INDEX `Email Adress_UNIQUE` (`Email Adress` ASC),
  UNIQUE INDEX `user id_UNIQUE` (`user id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Contact Manger`.`Contact Information`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Contact Manger`.`Contact Information` ;

CREATE TABLE IF NOT EXISTS `Contact Manger`.`Contact Information` (
  `First Name` VARCHAR(45) NOT NULL,
  `Last Name` VARCHAR(45) NULL,
  `Home Phone` VARCHAR(45) NULL,
  `Work Phone` VARCHAR(45) NULL,
  `Cell Phone` VARCHAR(45) NULL,
  `Personal Email` VARCHAR(45) NULL,
  `Work Email` VARCHAR(45) NULL,
  `Address` VARCHAR(100) NULL,
  `user id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`First Name`),
  INDEX `user id_idx` (`user id` ASC),
  CONSTRAINT `user id`
    FOREIGN KEY (`user id`)
    REFERENCES `Contact Manger`.`User Information` (`user id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS user1;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'user1';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
