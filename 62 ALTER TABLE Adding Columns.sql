-- ALTER if not null will add string.Empty "" or 0

SELECT * FROM companies;

ALTER TABLE companies
ADD COLUMN phone VARCHAR(15);

DESC companies;

ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;