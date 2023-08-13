SELECT AVG(rental_rate) as "Average Rental Cost"
FROM film;

SELECT rating, AVG(rental_rate) as "Average Rental Cost"
FROM film
GROUP BY rating;

SELECT SUM(replacement_cost)
FROM film;

SELECT rating, SUM(replacement_cost) 
FROM film
GROUP BY rating;

SELECT MIN(length)
FROM film;

SELECT MAX(length)
FROM film;

SELECT title, length AS "Max Length"
FROM film
WHERE length = (SELECT MAX(length) FROM film);

SELECT length AS min_length, title
FROM film
WHERE length = (SELECT MIN(length) FROM film);