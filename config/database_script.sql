CREATE  TABLE `hibernate`.`state` (
  `code` VARCHAR(2) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`code`) );
  
CREATE  TABLE `hibernate`.`city` (
  `code` INT NOT NULL,
  `state` VARCHAR(2) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`code`),
  INDEX `FK_CITY_STATE` (`state` ASC),
  CONSTRAINT `FK_CITY_STATE`
    FOREIGN KEY (`state` )
    REFERENCES `hibernate`.`state` (`code` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Acre', 'AC');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Alagoas', 'AL');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Amapá', 'AP');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Amazonas', 'AM');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Bahia', 'BA');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Ceará', 'CE');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Distrito Federal', 'DF');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Espírito Santo', 'ES');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Goiás', 'GO');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Maranhão', 'MA');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Mato Grosso', 'MT');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Mato Grosso do Sul', 'MS');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Minas Gerais', 'MG');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Pará', 'PA');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Paraíba', 'PB');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Paraná', 'PR');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Pernambuco', 'PE');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Piauí', 'PI');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Rio de Janeiro', 'RJ');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Rio Grande do Norte', 'RN');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Rio Grande do Sul', 'RS');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Rondônia', 'RO');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Roraima', 'RR');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Santa Catarina', 'SC');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('São Paulo', 'SP');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Sergipe', 'SE');
INSERT INTO `hibernate`.`state` (`name`, `code`) VALUES ('Tocantins', 'TO');

INSERT INTO `hibernate`.`city` (`code`, `state`, `name`) VALUES (1, 'MG', 'Belo Horizonte');
INSERT INTO `hibernate`.`city` (`code`, `state`, `name`) VALUES (2, 'MG', 'Contagem');
INSERT INTO `hibernate`.`city` (`code`, `state`, `name`) VALUES (3, 'MG', 'Betim');
INSERT INTO `hibernate`.`city` (`code`, `state`, `name`) VALUES (4, 'MG', 'Nova Lima');
INSERT INTO `hibernate`.`city` (`code`, `state`, `name`) VALUES (5, 'SP', 'Guarulhos');
INSERT INTO `hibernate`.`city` (`code`, `state`, `name`) VALUES (6, 'SP', 'São Paulo');
INSERT INTO `hibernate`.`city` (`code`, `state`, `name`) VALUES (7, 'SP', 'Campinas');
