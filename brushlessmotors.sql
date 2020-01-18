-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema brushlessmotors
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `brushlessmotors` ;

-- -----------------------------------------------------
-- Schema brushlessmotors
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `brushlessmotors` DEFAULT CHARACTER SET utf8 ;
USE `brushlessmotors` ;

-- -----------------------------------------------------
-- Table `brushlessmotor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `brushlessmotor` ;

CREATE TABLE IF NOT EXISTS `brushlessmotor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `max_current_amps` INT NULL,
  `max_voltage` INT NULL,
  `price` INT NULL,
  `weight_grams` INT NULL,
  `rpm` INT NULL,
  `force_N` DOUBLE NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS brushlessmotors@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'brushlessmotors'@'localhost' IDENTIFIED BY 'brushlessmotors';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'brushlessmotors'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `brushlessmotor`
-- -----------------------------------------------------
START TRANSACTION;
USE `brushlessmotors`;
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (1, 'Tarot 4008 330kv', 25, 24, 32, 80, 7920, 65.61);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (2, 'Turnigy Aerodrive SK3 - 4250-350kv', 50, 20, 36, 266, 7000, 123.72);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (3, 'ACK 5312CP - 330KV', 50, 30, 41, 230, 9900, 131.22);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (4, 'Turnigy Aerodrive SK3 - 5065-275kv', 60, 40, 56, 530, 10560, 188.95);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (5, 'ODrive Robotics D6374 - 150kv', 65, 32, 69, 420, 8640, 208.49);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (7, 'KEDA 63-64 190KV', 50, 40, 49, 670, 7296, 227.90);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (8, 'ODrive Robotics D6374 - 150kv', 70, 48, 99, 890, 5760, 404.15);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (9, 'Turnigy Aerodrive SK3 - 6374-149kv', 68, 48, 80, 840, 5722, 395.23);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (10, '9235-100KV Turnigy Multistar', 57, 48, 103, 647, 3840, 493.63);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (11, 'Hoverboard Hub-motor', 25, 48, 40, 1000, 614, 1353.16);
INSERT INTO `brushlessmotor` (`id`, `name`, `max_current_amps`, `max_voltage`, `price`, `weight_grams`, `rpm`, `force_N`) VALUES (DEFAULT, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;

