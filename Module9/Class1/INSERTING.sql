CREATE TABLE people (
	name VARCHAR(30) NOT NULL,
	has_pet BOOLEAN DEFAULT false,
	pet_type VARCHAR(10) NOT NULL,
	pet_name VARCHAR(30),
	pet_age INT
);

SELECT * FROM people;

INSERT INTO people (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty',10),
	('Ahmed', true, 'rock', 'Rockington',100),
	('Peter', true, 'cat', 'Franklin',2),
	('Dave', true, 'dog', 'Queso',1);
	
SELECT pet_name
FROM people;

SELECT pet_type, pet_name
FROM people
WHERE pet_type='dog'
AND pet_age<5;

INSERT INTO people (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Ahmed', true, 'rock', 'Rockington',100);

DELETE FROM people
WHERE name='Ahmed';

DROP TABLE people;

CREATE TABLE people (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	has_pet BOOLEAN DEFAULT false,
	pet_type VARCHAR(10) NOT NULL,
	pet_name VARCHAR(30),
	pet_age INT
);

INSERT INTO people (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty', 10),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Peter', true, 'cat', 'Franklin', 2),
  ('Dave', true, 'dog', 'Queso', 1),
  ('Dave', true, 'dog', 'Pringles', 7);
  
SELECT * FROM people;

DELETE FROM people
WHERE id = 3;

UPDATE people
SET has_pet = true, pet_name = 'Rocket', pet_age = 8
WHERE id = 6;