CREATE VIEW ordered_series AS 
SELECT * FROM series ORDER BY released_year;

SELECT * FROM ordered_series;

INSERT INTO ordered_series (title, released_year, genre)
VALUES ('The Great', 2022, 'Comedy');

INSERT INTO ordered_series (title, released_year, genre)
VALUES ('4 Fools', 2015, 'Comedy');

DELETE FROM ordered_series WHERE title = 'The Great';