DESC companies;

ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';