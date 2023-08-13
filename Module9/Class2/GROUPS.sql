SELECT * FROM film;

SELECT COUNT(film_id) FROM film;

SELECT COUNT(film_id) as "Total Films" FROM film;

SELECT rating, COUNT(film_id) as "Total Films"
FROM film
GROUP BY rating;

SELECT AVG(rental_duration) FROM film;

SELECT AVG(rental_duration) AS "Average Rental Period"
FROM film;

SELECT rental_duration, AVG(rental_rate) AS "Average Rental Rate"
FROM film
GROUP BY rental_duration;

SELECT rental_duration, MIN(rental_rate) AS "Min Rental Rate)"
FROM film
GROUP BY rental_duration;

SELECT rental_duration, MAX(rental_rate) AS "Max Rental Rate)"
FROM film
GROUP BY rental_duration;