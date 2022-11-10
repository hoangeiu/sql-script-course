CREATE TABLE users (
	username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);

INSERT INTO users(username, age) VALUES ('blue', 50);

SELECt * FROM users;

INSERT INTO users(username, age) VALUES ('yellow', -3);

INSERT INTO users(username, age) VALUES ('yellow', 0);

CREATE TABLE palindromes (
	word VARCHAR(100) CHECK (REVERSE(word) = word)
);

INSERT INTO palindromes(word) VALUES('lol');

INSERT INTO palindromes(word) VALUES('mommy');