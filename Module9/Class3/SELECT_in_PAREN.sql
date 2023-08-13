
select count(film_id) as "Number of Copies"
from inventory
group by film_id
order by "Number of Copies";


SELECT title, 
(SELECT COUNT(inventory.film_id) FROM inventory WHERE film.film_id = inventory.film_id) 
AS "Number of Copies"
FROM film;

CREATE VIEW "title_count" AS
SELECT title,
(SELECT COUNT(inventory.film_id) 
	FROM inventory
 	WHERE film.film_id = inventory.film_id)
AS "Number of Copies"
FROM film;