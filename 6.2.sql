SELECT first_name, last_name FROM actor WHERE last_name like 'L%'
union
SELECT first_name, last_name FROM customer WHERE last_name LIKE 'L%';