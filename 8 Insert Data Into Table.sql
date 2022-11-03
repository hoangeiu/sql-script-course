-- Insert value into a table

INSERT INTO cats(name, age) 
VALUES ('Jetson', 7);

INSERT INTO cats(age, name) 
VALUES (2, "Beth");

INSERT INTO cats(name, age) 
VALUES ('Meatball', 5),
("Turkey", 1),
("Happy", 3);

SELECT * FROM cats;

DESC cats;