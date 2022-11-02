-- Create a table

CREATE DATABASE IF NOT EXISTS pet_shop;
CREATE TABLE cats (
	name VARCHAR(50),
    age INT
);

CREATE TABLE dogs (
	name VARCHAR(50),
    breed VARCHAR(50),
    age INT    
);