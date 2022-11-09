-- CHAR is good for text that fixed in size: postcode, city in short NY, HCM

CREATE TABLE inventory (
	item_name VARCHAR(50),
    price DECIMAL(7, 2),
    quantity TINYINT
);

-- TIMESTAMP less memory, store less in time (1970-2038)

SELECT CURTIME();
SELECT CURDATE();
-- Print out current date of week
SELECT DAYOFWEEK(CURDATE());
-- Print out the current date of week with the day name
SELECT DAYNAME(CURDATE());
SELECT DATE_FORMAT(NOW(), '%W');
-- Print out the current date and time using this format: mm/dd/yyyy
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
-- Print out the current date and time using this format: January 2nd at 3:15 or April 1st at 10:18
SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');

CREATE TABLE tweets(
	content VARCHAR(180),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);




