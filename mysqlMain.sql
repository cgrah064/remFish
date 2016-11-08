CREATE DATABASE fishDb;
use fishDb

CREATE TABLE client (
user VARCHAR(255) NOT NULL,
dataCategory VARCHAR(255) NOT NULL,
dataType VARCHAR(255) NOT NULL,
value VARCHAR(255) NOT NULL,
timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "userData", "password", "0000");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "userData", "email", "cgrah064@uottawa.ca");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "userData", "alerts", "0");

INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "fishTank", "nFish", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "fishTank", "planted", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "fishTank", "age", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "fishTank", "size", "10.4");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "fishTank", "min", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "fishTank", "max", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "fishTank", "rate", "0");

INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "waterTank", "size", "6.9");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "waterTank", "min", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "waterTank", "max", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "waterTank", "rate", "0");

INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "drainTank", "alive", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "drainTank", "size", "6.9");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "drainTank", "min", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "drainTank", "max", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "drainTank", "rate", "0");

INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "foodDispenser", "frequency", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "foodDispenser", "servings", "0");


INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "waterChanges", "frequency", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "waterChanges", "max", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "waterChanges", "next", "0");

INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "alert", "fishMax", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "alert", "waterMax", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "alert", "drainMax", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "alert", "fishMin", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "alert", "waterMin", "0");
INSERT INTO client (user, dataCategory, dataType, value)
VALUES ("fishAdmin", "alert", "drainMin", "0");

CREATE TABLE logs (
user VARCHAR(255) NOT NULL,
log VARCHAR(255) NOT NULL,
timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE water (
dataType VARCHAR(255) NOT NULL,
value VARCHAR(255) NOT NULL,
timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO water (dataType, value)
VALUES ("fishMax", "0");
INSERT INTO water (dataType, value)
VALUES ("waterMax", "0");
INSERT INTO water (dataType, value)
VALUES ("drainMax", "0");
INSERT INTO water (dataType, value)
VALUES ("fishMin", "0");
INSERT INTO water (dataType, value)
VALUES ("waterMin", "0");
INSERT INTO water (dataType, value)
VALUES ("drainMin", "0");

