
CREATE TABLE IF NOT EXISTS `Player_Information` (
  `id` INT NOT NULL,
  `Full_name` VARCHAR(45) NULL,
  `Mail` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS  `Positions` (
  `id` INT NOT NULL,
  `Title` VARCHAR(45) NULL,
  `Salary` VARCHAR(45) NULL,
  `Access _levels` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS  `Employees` (
  `id` INT NOT NULL,
  `Full_name` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `Income` VARCHAR(45) NULL,
  `Positions_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Employees_Positions1_idx` (`Positions_id` ASC) VISIBLE,
  CONSTRAINT `fk_Employees_Positions1`
    FOREIGN KEY (`Positions_id`)
    REFERENCES  `Positions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS  `Computer` (
  `id` INT NOT NULL,
  `Operating_system` VARCHAR(45) NULL,
  `Frequency` VARCHAR(45) NULL,
  `Monitor` VARCHAR(45) NULL,
  `Video_card` VARCHAR(45) NULL,
  `HDD` VARCHAR(45) NULL,
  `Mouse` VARCHAR(45) NULL,
  `Keyboard` VARCHAR(45) NULL,
  `Headphones` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS  `Consoles` (
  `id` INT NOT NULL,
  `Type` VARCHAR(45) NULL,
  `Generation` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS  `Platform` (
  `id` INT NOT NULL,
  `Computer_id` INT NOT NULL,
  `Consoles_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Platform_Computer1_idx` (`Computer_id` ASC) VISIBLE,
  INDEX `fk_Platform_Consoles1_idx` (`Consoles_id` ASC) VISIBLE,
  CONSTRAINT `fk_Platform_Computer1`
    FOREIGN KEY (`Computer_id`)
    REFERENCES  `Computer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Platform_Consoles1`
    FOREIGN KEY (`Consoles_id`)
    REFERENCES  `Consoles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS  `Storage` (
  `id` INT NOT NULL,
  `Title` VARCHAR(45) NOT NULL,
  `Quantity` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `Title`, `Quantity`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS  `Services` (
  `id` INT NOT NULL,
  `Title` VARCHAR(45) NULL,
  `Tariff` VARCHAR(45) NULL,
  `Food` VARCHAR(45) NULL,
  `Storage_id` INT NOT NULL,
  `Storage_Title` VARCHAR(45) NOT NULL,
  `Storage_Quantity` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Services_Storage1_idx` (`Storage_id` ASC, `Storage_Title` ASC, `Storage_Quantity` ASC) VISIBLE,
  CONSTRAINT `fk_Services_Storage1`
    FOREIGN KEY (`Storage_id` , `Storage_Title` , `Storage_Quantity`)
    REFERENCES  `Storage` (`id` , `Title` , `Quantity`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS  `Visit` (
  `id` VARCHAR(45) NOT NULL,
  `Date_and_time_of_rental` DATETIME NOT NULL,
  `Duration` TIME NOT NULL,
  `Price` INT NOT NULL,
  `Player_Information_id` INT NOT NULL,
  `Employees_id` INT NOT NULL,
  `Platform_id` INT NOT NULL,
  `Services_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Посещение_Player_Information1_idx` (`Player_Information_id` ASC) VISIBLE,
  INDEX `fk_Visit_Employees1_idx` (`Employees_id` ASC) VISIBLE,
  INDEX `fk_Visit_Platform1_idx` (`Platform_id` ASC) VISIBLE,
  INDEX `fk_Visit_Services1_idx` (`Services_id` ASC) VISIBLE,
  CONSTRAINT `fk_Посещение_Player_Information1`
    FOREIGN KEY (`Player_Information_id`)
    REFERENCES  `Player_Information` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Visit_Employees1`
    FOREIGN KEY (`Employees_id`)
    REFERENCES  `Employees` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Visit_Platform1`
    FOREIGN KEY (`Platform_id`)
    REFERENCES  `Platform` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Visit_Services1`
    FOREIGN KEY (`Services_id`)
    REFERENCES  `Services` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS  `Vacancies` (
  `id` INT NOT NULL,
  `Free` VARCHAR(45) NULL,
  `Time_to_release` VARCHAR(45) NULL,
  `Computer_id` INT NOT NULL,
  `Consoles_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Vacancies_Computer1_idx` (`Computer_id` ASC) VISIBLE,
  INDEX `fk_Vacancies_Consoles1_idx` (`Consoles_id` ASC) VISIBLE,
  CONSTRAINT `fk_Vacancies_Computer1`
    FOREIGN KEY (`Computer_id`)
    REFERENCES  `Computer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vacancies_Consoles1`
    FOREIGN KEY (`Consoles_id`)
    REFERENCES  `Consoles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;