-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema jpacruddb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `jpacruddb` ;

-- -----------------------------------------------------
-- Schema jpacruddb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jpacruddb` DEFAULT CHARACTER SET utf8 ;
USE `jpacruddb` ;

-- -----------------------------------------------------
-- Table `dog`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dog` ;

CREATE TABLE IF NOT EXISTS `dog` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `breed` VARCHAR(45) NULL,
  `dob` DATE NULL,
  `description` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS dogowner@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'dogowner'@'localhost' IDENTIFIED BY 'dogowner';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'dogowner'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dog`
-- -----------------------------------------------------
START TRANSACTION;
USE `jpacruddb`;
INSERT INTO `dog` (`id`, `name`, `breed`, `dob`, `description`) VALUES (1, 'Spots', 'Dalmation', '20100812', 'Saves people from buildings');
INSERT INTO `dog` (`id`, `name`, `breed`, `dob`, `description`) VALUES (2, 'Rufas', 'Bull Dog', '20100812', 'Rides a skateboard like a pro');
INSERT INTO `dog` (`id`, `name`, `breed`, `dob`, `description`) VALUES (3, 'Scooby', 'Great Dane', '20100812', 'Loves scooby snacks');
INSERT INTO `dog` (`id`, `name`, `breed`, `dob`, `description`) VALUES (4, 'Pancho', 'Chihuahua', '20100812', 'Shakes like San Francisco');
INSERT INTO `dog` (`id`, `name`, `breed`, `dob`, `description`) VALUES (5, 'Shnuggles', 'Yellow Lab', '20100812', 'She\'s Shnuggly');

COMMIT;

