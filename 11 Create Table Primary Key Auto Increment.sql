DROP TABLE unique_cats;
CREATE TABLE unique_cats(
	cat_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

-- CREATE TABLE unique_cats(
-- 	cat_id INT AUTO_INCREMENT,
--     name VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
-- );

INSERT INTO unique_cats(name, age) VALUES ('bingo', 2);

INSERT INTO unique_cats(cat_id, name, age) VALUES (3, 'bingo', 2);

SELECT * FROM unique_cats;

DESC unique_cats;