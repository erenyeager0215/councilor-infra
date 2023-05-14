DROP TABLE IF EXISTS councilors;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS category;


CREATE TABLE IF NOT EXISTS councilors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    commitee VARCHAR(20),
    imagepath VARCHAR(50),
    address VARCHAR(50),
    contact VARCHAR(50),
    birthday DATETIME,
    url VARCHAR(80),
    active BOOLEAN NOT NULL,
    created_at DATETIME
);

 LOAD DATA INFILE "/docker-entrypoint-initdb.d/002-councilors.csv" INTO TABLE councilors FIELDS TERMINATED BY ',';

CREATE TABLE IF NOT EXISTS questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
	overview TEXT,
	category VARCHAR(30),
	content TEXT,
	answer TEXT,
	held_time VARCHAR(20),
	councilor_id INTEGER,
	created_at DATETIME
);            

LOAD DATA INFILE "/docker-entrypoint-initdb.d/003-questions.csv" INTO TABLE questions FIELDS TERMINATED BY ',';


CREATE TABLE IF NOT EXISTS category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
	category_name VARCHAR(30),
	created_at DATETIME
);            

LOAD DATA INFILE "/docker-entrypoint-initdb.d/004-category.csv" INTO TABLE category FIELDS TERMINATED BY ',';