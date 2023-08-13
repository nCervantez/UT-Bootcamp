SELECT rental_rate, AVG(length) as "Average Length"
FROM film
GROUP BY rental_rate
ORDER BY "Average Length";

SELECT rental_rate, ROUND(AVG(length),2) as "Average Length"
FROM film
GROUP BY rental_rate
ORDER BY "Average Length";

SELECT rental_rate, ROUND(AVG(length),2) as "Average Length"
FROM film
GROUP BY rental_rate
ORDER BY "Average Length"
LIMIT 5;