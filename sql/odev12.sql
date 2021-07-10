

--First
SELECT COUNT(*) FROM film
WHERE length >
(
	SELECT AVG(length) FROM film
);

--Second
SELECT COUNT(*) FROM film
WHERE rental_rate =
(
	SELECT MAX(rental_rate) FROM film
);

--Third

/*This one, I wasn't sure what the question asks. Does it ask me to return the data that has lowest rate and cost at the 
same time or lowest rate films and lowest cost films. So I did it both. */

--Lowest rate and lowest cost at the same time. Used INTERSECT cause i don't think repeating same data is necessary.
(SELECT film_id, title FROM film
WHERE rental_rate=(
	SELECT MIN(rental_rate) FROM film
))
INTERSECT
(SELECT film_id, title FROM film
WHERE replacement_cost=(
	SELECT MIN(replacement_cost) FROM film
))

--Lowest rate films and lowest cost films doesn't have both conditions. Used UNION cause i don't think repeating same data is necessary.
(SELECT film_id, title FROM film
WHERE rental_rate=(
	SELECT MIN(rental_rate) FROM film
))
UNION
(SELECT film_id, title FROM film
WHERE replacement_cost=(
	SELECT MIN(replacement_cost) FROM film
))


--Fourth
--Since we can use subquery as variable(column), I tried using it as creating new table[It gives count of customers how many times bought something]. I named it new table
SELECT first_name, last_name, count
FROM (SELECT customer_id, COUNT(customer_id)
							  FROM payment
								GROUP BY customer_id) AS new_table
--since I created new table, I named it new_table and that's why the variable name is new_table in the JOIN code.
JOIN customer ON customer.customer_id = new_table.customer_id
ORDER BY count DESC
LIMIT 20