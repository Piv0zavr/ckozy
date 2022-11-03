SELECT title FROM film WHERE film_id in
(SELECT film_category.film_id FROM film_category INNER JOIN category ON film_category.category_id = category.category_id WHERE category.name = 'Action');