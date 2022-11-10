-- Rename table
SHOW TABLES;

RENAME TABLE companies TO suppliers;

SELECT * FROM suppliers;

ALTER TABLE suppliers RENAME TO companies;

SELECT * FROM companies;
-- Renaming Columns
DESC companies;

ALTER TABLE companies
RENAME COLUMN name TO company_name;

SELECT * FROM companies;

