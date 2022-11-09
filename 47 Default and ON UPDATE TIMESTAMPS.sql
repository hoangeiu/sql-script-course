-- DEFAULT TIMESTAMP and AUTO UPDATE TIME
CREATE TABLE captions (
	text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO captions(text)
VALUES('I hate my current work');

INSERT INTO captions(text)
VALUES('I want to quit but I do not have money TT');

SELECT * FROM captions;

CREATE TABLE captions2 (
	text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO captions2(text)
VALUES('I hate my current work');

INSERT INTO captions2(text)
VALUES('I want to quit but I do not have money TT');

SELECT * FROM captions2;

UPDATE captions2 SET text='I hate my current work so much' WHERE text='I hate my current work';

UPDATE captions2 SET text='I hate my current work so much, I will find another job' WHERE text='I hate my current work so much';



