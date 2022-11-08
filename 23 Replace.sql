SELECT REPLACE('Hello World', 'Hell', '%$#@');

SELECT 
    REPLACE('cheese bread coffee milk',
        ' ',
        ' and ');
	
-- Case sensitive
SELECT REPLACE('I am Hoang', 'hoang', 'MR.Hoang');
        
-- ----------------------------------------------------------
SELECT REPLACE(title, ' ', '-') FROM books;
