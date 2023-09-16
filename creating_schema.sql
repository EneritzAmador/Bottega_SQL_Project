-- creating Schema
CREATE SCHEMA `bottega_sql_schema` ;

-- creating students table

CREATE TABLE `bottega_sql_schema`.`students` (
  `students_id` INT NOT NULL AUTO_INCREMENT,
  `students_first_name` VARCHAR(45) NOT NULL,
  `students_last_name` VARCHAR(45) NOT NULL,
  `students_email` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`students_id` ASC),
  UNIQUE INDEX `students_email_UNIQUE` (`students_email` ASC));


-- creating professor table

CREATE TABLE `bottega_sql_schema`.`professors` (
  `profesors_id` INT NOT NULL AUTO_INCREMENT,
  `professors_first_name` VARCHAR(45) NOT NULL,
  `professors_last_name` VARCHAR(45) NOT NULL,
  `professors_email` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`proffesors_id`),
  UNIQUE INDEX `proffesors_id_UNIQUE` (`proffesors_id` ASC),
  UNIQUE INDEX `professors_email_UNIQUE` (`professors_email` ASC));

  -- creating courses table

CREATE TABLE `bottega_sql_schema`.`courses` (
  `courses_id` INT NOT NULL AUTO_INCREMENT,
  `courses_name` VARCHAR(100) NOT NULL,
  `courses_professors_id` INT NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE INDEX `courses_id_UNIQUE` (`courses_id` ASC),
  INDEX `courses_professors_id_idx` (`courses_professors_id` ASC),
  CONSTRAINT `courses_professors_id`
    FOREIGN KEY (`courses_professors_id`)
    REFERENCES `bottega_sql_schema`.`professors` (`profesors_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);


-- creating grades table

CREATE TABLE `bottega_sql_schema`.`grades` (
  `grades_id` INT NOT NULL AUTO_INCREMENT,
  `grades_students_id` INT NOT NULL,
  `grades_courses_id` INT NOT NULL,
  `grades_puntuation` INT NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE INDEX `grades_id_UNIQUE` (`grades_id` ASC),
  INDEX `grades_students_id_idx` (`grades_students_id` ASC),
  INDEX `grades_courses_id_idx` (`grades_courses_id` ASC),
  CONSTRAINT `grades_students_id`
    FOREIGN KEY (`grades_students_id`)
    REFERENCES `bottega_sql_schema`.`students` (`students_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `grades_courses_id`
    FOREIGN KEY (`grades_courses_id`)
    REFERENCES `bottega_sql_schema`.`courses` (`courses_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);