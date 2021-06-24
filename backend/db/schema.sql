CREATE DATABASE project_5;
USE project_5;

CREATE TABLE roles (
    id INT AUTO_INCREMENT NOT NULL,
    role VARCHAR(255),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (id)
);

CREATE TABLE users(
    id INT AUTO_INCREMENT NOT NULL,
    firstName VARCHAR(255),
    lastName VARCHAR(255),
    age INT(3),
    country VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (id)
);

CREATE TABLE place (
id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(255),
description VARCHAR(255),
img VARCHAR(255),
capacity VARCHAR(255),
city VARCHAR(255),
address VARCHAR(255),
availability VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE extraServices(
id INT AUTO_INCREMENT NOT NULL,
serviseName VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE rating (
id INT AUTO_INCREMENT NOT NULL,
place_id INT,
FOREIGN KEY (place_id) REFERENCES place(id),
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id),
rate INT,
is_deleted TINYINT DEFAULT 0,
PRIMARY KEY (id)
);

CREATE TABLE favorite (
id INT AUTO_INCREMENT NOT NULL,
place_id INT,
FOREIGN KEY (place_id) REFERENCES place(id),
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(id),
rating_id INT,
FOREIGN KEY (rating_id) REFERENCES rating(id),
is_deleted TINYINT DEFAULT 0,
PRIMARY KEY (id)
);

CREATE TABLE occasions(
    id INT AUTO_INCREMENT NOT NULL,
    place_id INT,
    FOREIGN KEY (place_id) REFERENCES place(id),
    type Varchar(255),
    is_deleted TINYINT DEFAULT 0,
    PRIMARY KEY (id)
    );

CREATE TABLE servisesPlaces(
id INT AUTO_INCREMENT NOT NULL,
costServises VARCHAR(255),
place_id INT,
FOREIGN KEY (place_id) REFERENCES place(id),
extraServices_id INT,
FOREIGN KEY (extraServices_id) REFERENCES extraServices(id),
PRIMARY KEY (id)
);

CREATE TABLE slider (
id INT AUTO_INCREMENT NOT NULL,
img  VARCHAR(255),
place_id INT,
FOREIGN KEY (place_id) REFERENCES place(id),
is_deleted TINYINT DEFAULT 0,
PRIMARY KEY (id)
);



