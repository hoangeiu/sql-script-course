CREATE TABLE cats3 (
	name VARCHAR(100) DEFAULT 'unnamed',
    age INT DEFAULT 99
);

INSERT INTO cats3() VALUES ();

INSERT INTO cats3(name, age) VALUES (null, null);

SELECT * FROM cats3;

DESC cats3;