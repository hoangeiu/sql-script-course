-- Print out books published before 1980
SELECT * FROM books WHERE released_year < 1980;
-- Select all books written by Eggers or Chabon
SELECT * FROM books WHERE author_lname = 'Eggers' OR author_lname = 'Chabon';
-- Select all books written by Lahiri, published after 2000
SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;
-- Select all books with page counts between 100 and 200
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;
-- Select all books where author_lname starts with a 'C' or an 'S'
SELECT * FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

SELECT * FROM books WHERE SUBSTR(author_lname, 1, 1) IN ('C', 'S');
-- Case
SELECT title, author_lname,
	CASE
		WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title IN ('Just Kids', 'A Heartbreaking Work of Staggering Genius') THEN 'Memior'
        ELSE 'Novel'
    END AS type
FROM books;
--
SELECT author_fname, author_lname, 
	CASE
		WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books GROUP BY author_fname, author_lname;








