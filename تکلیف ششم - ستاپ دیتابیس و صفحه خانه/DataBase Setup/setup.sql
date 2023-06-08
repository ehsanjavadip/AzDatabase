/*Taklif 6 : Ehsan Javadi
Ostad : Imani 
Date Time : -
SQL Code
*/

/*Check , Create , Use DataBase :*/
DROP SCHEMA IF EXISTS 'building_manage' ;
CREATE SCHEMA IF NOT EXISTS 'building_manage' DEFAULT CHARACTER SET utf8_persian_ci ;
USE 'building_manage';

/*All Tables to Create*/

/*bcharge*/
CREATE TABLE IF NOT EXISTS 'building_manage'.'bcharge' (
  'id' INT(11) NOT NULL AUTO_INCREMENT,
  'Subject' VARCHAR(20),
  'DateAdded' VARCHAR(20),
  'MonthName' VARCHAR(10),
  'user_id' INT(4),
  'manager_id' INT(1),
  'Amonth' VARCHAR(10),
  'ExtraAmonth' VARCHAR(10),
  'Status' ENUM('true','false'),
  PRIMARY KEY('id'),
  INDEX 'MonthName' ('MonthName' ASC),
  INDEX 'Amonth' ('Amonth' ASC),
  INDEX 'ExtraAmonth' ('ExtraAmonth' ASC)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

/*contactus*/
CREATE TABLE IF NOT EXISTS 'building_manage'.'contactus' (
  'id' INT(10) NOT NULL AUTO_INCREMENT,
  'name' VARCHAR(10) NOT NULL,
  'familyname' VARCHAR(20) NOT NULL,
  'email' VARCHAR(30) NOT NULL,
  'phonenumber' INT(11) NOT NULL,
  'subject' VARCHAR(60) NOT NULL,
  'description' TEXT NOT NULL,
  'attach' VARCHAR(20) NOT NULL,
  'emailpre' TINYINT(1) NOT NULL,
  PRIMARY KEY('id'),
  INDEX 'email' ('email' ASC),
  INDEX 'subject' ('subject' ASC)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

/*users*/
CREATE TABLE IF NOT EXISTS 'building_manage'.'users' (
  'id' INT(11) NOT NULL AUTO_INCREMENT,
  'name' VARCHAR(10) NOT NULL,
  'family' VARCHAR(20) NOT NULL,
  'phone' INT(11) NOT NULL,
  'username' VARCHAR(10) NOT NULL,
  'password' VARCHAR(8) NOT NULL,
  'age' INT(2) NOT NULL,
  'status' VARCHAR(10) NOT NULL,
  'job' VARCHAR(20) NOT NULL,
  'Deleted' ENUM('yes','no') NOT NULL,
  PRIMARY KEY('id'),
  INDEX 'username' ('username' ASC),
  INDEX 'Deleted' ('Deleted' ASC)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4_general_ci;