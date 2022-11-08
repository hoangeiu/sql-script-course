SELECT INSERT('Hello Bobby', 6, 0, ' There');

SELECT INSERT('Hello Bobby', 6, 4, ' There');

SELECT INSERT('Hello Bobby', 6, 6, ' There');

-- ---------------------
SELECT LEFT(author_lname, 1), author_lname FROM books;
-- ---------------------
SELECT REPEAT('ha', 4);
-- ---------------------
SELECT TRIM('   boston ');

SELECT TRIM(LEADING '.' FROM '..........san antonio..');