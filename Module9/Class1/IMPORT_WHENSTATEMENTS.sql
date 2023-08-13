DROP TABLE fauna_vertabrate;

CREATE TABLE fauna_vertabrate (
	longitude DEC,
	latitude DEC,
	OBJECTID INT,
	suburb VARCHAR,
	property_name VARCHAR,
	GI_class VARCHAR,
	GI_type	VARCHAR,
	group_ VARCHAR,
	family VARCHAR,
	family_common_name VARCHAR,
	scientific_name VARCHAR,
	genus VARCHAR,
	species VARCHAR,	
	common_name VARCHAR,	
	fauna_status VARCHAR
);

SELECT * FROM fauna_vertabrate;

CREATE TABLE movie_words_comparison (
	rater_id int,
	reference_title VARCHAR,
	soft_attribute VARCHAR,
	less_than VARCHAR,
	about_as VARCHAR,
	more_than VARCHAR
);

SELECT * FROM movie_words_comparison;

SELECT * FROM movie_words_comparison
WHERE reference_title='Home Alone (1990)';

SELECT * FROM movie_words_comparison
WHERE rater_id in (10,11,12,13,14,15);

SELECT * FROM movie_words_comparison
WHERE soft_attribute='artsy'
OR soft_attribute='heartfelt';

SELECT * FROM movie_words_comparison
WHERE reference_title='Batman (1989)'
AND soft_attribute='scary';

SELECT * FROM movie_words_comparison
WHERE reference_title='Home Alone (1990)'
AND rater_id >= 30
AND rater_id <= 40
AND soft_attribute='artsy';