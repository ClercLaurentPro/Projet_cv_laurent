-- MySQL Script generated by MySQL Workbench
-- Thu Jan 30 22:15:33 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema satymoo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema satymoo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `satymoo` DEFAULT CHARACTER SET utf8 ;
USE `satymoo` ;

-- -----------------------------------------------------
-- Table `satymoo`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `satymoo`.`users` ;

CREATE TABLE IF NOT EXISTS `satymoo`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `users_type` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `satymoo`.`posts`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `satymoo`.`posts` ;

CREATE TABLE IF NOT EXISTS `satymoo`.`posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `content` LONGTEXT NULL,
  `created` DATE NULL,
  `onine` INT NULL,
  `type` VARCHAR(45) NULL,
  `users_id` INT NULL,
  `postscol` VARCHAR(45) NULL,
  `slug` VARCHAR(45) NULL,
  `users_id1` INT NOT NULL,
  PRIMARY KEY (`id`, `users_id1`))
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `satymoo`.`medias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `satymoo`.`medias` ;

CREATE TABLE IF NOT EXISTS `satymoo`.`medias` (
  `id` INT GENERATED ALWAYS AS () VIRTUAL,
  `name` VARCHAR(45) NULL,
  `file` VARCHAR(45) NULL,
  `posts_id` INT NULL,
  `type` VARCHAR(45) NULL,
  `posts_id1` INT NOT NULL,
  `posts_users_id1` INT NOT NULL,
  PRIMARY KEY (`id`, `posts_id1`, `posts_users_id1`))
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `satymoo`.`configs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `satymoo`.`configs` ;

CREATE TABLE IF NOT EXISTS `satymoo`.`configs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `value` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = MyISAM;


-- -----------------------------------------------------
-- Table `satymoo`.`comments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `satymoo`.`comments` ;

CREATE TABLE IF NOT EXISTS `satymoo`.`comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comments` LONGTEXT NULL,
  `id_users_comments` INT NULL,
  `users_id` INT NOT NULL,
  PRIMARY KEY (`id`, `users_id`))
ENGINE = MyISAM;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
