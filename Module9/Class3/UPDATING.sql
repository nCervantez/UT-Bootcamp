CREATE TABLE programming_languages 
	(id SERIAL PRIMARY KEY,
	 language VARCHAR(20),
	 rating INT
);

INSERT INTO programming_languages (language, rating)
VALUES ('HTML', 95),
	('JS', 99),
	('JQuery', 98),
	('MySQL', 70),
	('MySQL', 70);
	
SELECT * FROM programming_languages
WHERE language='MySQL';

DELETE FROM programming_languages
WHERE id=5;

SELECT * FROM programming_languages;

INSERT INTO programming_languages (language, rating)
VALUES ('C++', 98);

UPDATE programming_languages
SET language='Java Script'
WHERE id = 2;

UPDATE programming_languages
SET rating=90
WHERE id = 1;

ALTER TABLE programming_languages
ADD COLUMN expert BOOLEAN DEFAULT true;