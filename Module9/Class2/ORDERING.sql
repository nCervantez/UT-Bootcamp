SELECT COUNT(first_name), first_name
FROM actor
GROUP BY first_name
ORDER BY first_name;

SELECT rating, ROUND(AVG(rental_duration),2) AS "AVG Rental Duration"
FROM film
GROUP BY rating
ORDER BY "AVG Rental Duration";

SELECT length, AVG(replacement_cost) as "AVG Replacement Cost"
FROM film
GROUP BY length
ORDER BY "AVG Replacement Cost"
LIMIT 10;