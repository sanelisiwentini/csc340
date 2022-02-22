CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE hospital;

DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS visits;
DROP TABLE IF EXISTS admitted;

CREATE TABLE doctor (
  doctorId INT(8) NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL,
  specialty VARCHAR(255) NOT NULL,
  PRIMARY KEY (doctorId)
);
CREATE TABLE patient (
  patientId INT(8) NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  st VARCHAR(255) NOT NULL,
  zip VARCHAR(255) NOT NULL,
  sex VARCHAR(10) NOT NULL,
  age int(3) NOT NULL,
  insurance VARCHAR(255),
  PRIMARY KEY (patientId)
);
CREATE TABLE room (
  roomNumber INT(3) NOT NULL AUTO_INCREMENT,
  occupied char(1) NOT NULL,
  roomType VARCHAR(255) NOT NULL,
  price DECIMAL(5, 2) NOT NULL,
  PRIMARY KEY (roomNumber)
);
CREATE TABLE visits (
  patientId INT(8) NOT NULL,
  doctorId INT(8) NOT NULL,
  visitDate DATETIME(2) NOT NULL,
  procedureDone VARCHAR(255),
  diagnosis VARCHAR(255),
  bill DECIMAL(5, 2) NOT NULL,
  presciption VARCHAR(255), PRIMARY KEY (patientId, doctorId, visitDate),
  FOREIGN KEY (patientId) REFERENCES patient(patientId),
  FOREIGN KEY (doctorId) REFERENCES doctor(doctorId)
);
CREATE TABLE admitted (
  patientId INT(8) NOT NULL,
  roomNumber INT(3) NOT NULL,
  dateAdmit DATETIME(2) NOT NULL,
  dateDischarged DATETIME(2) NOT NULL,
  PRIMARY KEY (patientId, roomNumber),
  FOREIGN KEY (patientId) REFERENCES patient(patientId),
  FOREIGN KEY (roomNumber) REFERENCES room(roomNumber)
);
COMMIT;