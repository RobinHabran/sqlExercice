-- créer la table tools avec les colonnes id
-- et tool VARCHAR()
CREATE DATABASE `test`;
CREATE TABLE `webDevelopment`.`tools`(
  `id` INT AUTO_INCREMENT,
  `tool` VARCHAR(255),
  PRIMARY KEY(`id`)
)ENGINE = InnoDB;
