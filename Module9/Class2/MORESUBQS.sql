SELECT * FROM city;

SELECT city_id, city
FROM city
WHERE city in ('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes');

SELECT district
FROM address
WHERE city_id in
(
	SELECT city_id
	FROM city
	WHERE city in('Qalyub', 'Qinhuangdao', 'Qomsheh', 'Quilmes')
);


SELECT first_name, last_name
FROM customer cus
WHERE address_id IN
(
  SELECT address_id
  FROM address a
  WHERE city_id IN
  (
    SELECT city_id
    FROM city
    WHERE city LIKE 'Q%'
  )
);