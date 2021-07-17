--first
SELECT * FROM film
WHERE title LIKE 'K%' AND replacement_cost=(
SELECT MIN(replacement_cost) FROM film
WHERE title LIKE 'K%') 
AND length=(SELECT MAX(length) FROM film
WHERE title LIKE 'K%'
)

--second





--Third
--So this is basically same as previous homework assignment Q4. But I did it with LIMIT. Howe
SELECT first_name, last_name, count
FROM (SELECT customer_id, COUNT(customer_id)
							  FROM payment
								GROUP BY customer_id) AS new_table
--since I created new table, I named it new_table and that's why the variable name is new_table in the JOIN code.
JOIN customer ON customer.customer_id = new_table.customer_id
ORDER BY count DESC
LIMIT 1

--Fourth
SELECT name AS category, COUNT(*) FROM film
JOIN (SELECT * FROM category
JOIN film_category ON film_category.category_id=category.category_id) AS new_table
ON film.film_id=new_table.film_id
GROUP BY category


--FIFTH
SELECT COUNT(*) FROM film
WHERE title ILIKE '%e%e%e%e%'