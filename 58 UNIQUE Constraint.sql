CREATE TABLE contacts (
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO contacts (name, phone) VALUES ('billybob', '123456');

SELECT * FROM contacts;

INSERT INTO contacts (name, phone) VALUES ('timmy', '1234567');

INSERT INTO contacts (name, phone) VALUES ('billybob', '123457');

