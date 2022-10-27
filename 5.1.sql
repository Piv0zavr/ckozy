use sakila;

/*5.1*/

SELECT customer.first_name, customer.last_name, address.address, city.city
FROM customer 
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city 
ON address.city_id = city.city_id 
WHERE address.district = 'California';