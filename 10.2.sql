SELECT customer.name, sum(рayment.amount) FROM payment RIGHT OUTER JOIN customer ON customer.customer_id = payment.customer_id GROUP BY customer.name;