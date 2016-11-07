CREATE DATABASE fishDb;
use fishDb

CREATE TABLE clientData (
entry INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
user VARCHAR(255) NOT NULL,
dataCategory VARCHAR(255) NOT NULL,
dataType VARCHAR(255) NOT NULL,
value VARCHAR(255) NOT NULL,
timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO fishDb (user, dataCategory, dataType, value)
VALUES
("fishAdmin", "userData", "password", "0000");

INSERT INTO fishDb (user, dataCategory, dataType, value)
VALUES
("fishAdmin", "userData", "email", "cgrah064@uottawa.ca");

INSERT INTO fishDb (user, dataCategory, dataType, value)
VALUES
("fishAdmin", "userData", "alerts", "1");

INSERT INTO fishDb (user, dataCategory, dataType, value)
VALUES
("fishAdmin", "fishTank", "nFish", "0");

INSERT INTO fishDb (user, dataCategory, dataType, value)
VALUES
("fishAdmin", "fishTank", "planted", "0");

INSERT INTO fishDb (user, dataCategory, dataType, value)
VALUES
("fishAdmin", "fishTank", "age", "0");

INSERT INTO fishDb (user, dataCategory, dataType, value)
VALUES
("fishAdmin", "fishTank", "size", "10.4");

INSERT INTO fishDb (user, dataCategory, dataType, value)
VALUES
("fishAdmin", "fishTank", "min", "80");

INSERT INTO fishDb (user, dataCategory, dataType, value)
VALUES
("fishAdmin", "fishTank", "max", "92");










