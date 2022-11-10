CREATE TABLE users2 (
	username VARCHAR(20) NOT NULL,
    age INT,
    CONSTRAINT age_not_negative CHECK (age >= 0)
);

INSERT INTO users2(username, age) VALUES ('le', 9);

INSERT INTO users2(username, age) VALUES ('le', -9);