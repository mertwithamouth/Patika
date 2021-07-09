/*

1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz
    RIGHT JOIN sorgusunu yazınız. 
    
3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz 
    FULL JOIN sorgusunu yazınız.

*/



--First
--In this example city and country tables has country_id column. So this is the column we are going to use as ref
--I added WHERE condition to see if any null values. Since it is left join, I used IS NULL for the right table cause null values would come from right table.
SELECT city.city,country.country FROM city
LEFT JOIN country ON city.country_id = country.country_id
WHERE country.country IS NULL;

--Second
--Takes first name and last name columns from customer table and payment id from PAYMENT table and since they both have customer id, used that as ref
--I added WHERE condition to see if any null values. Since it is right join, I used IS NULL for the left table cause null values would come from left table.
SELECT customer.first_name,customer.last_name,payment.payment_id FROM customer
RIGHT JOIN payment ON customer.customer_id = payment.customer_id
WHERE customer.first_name IS NULL OR customer.last_name IS NULL;

--Third
--Takes rental id from RENTAL table and firstname, lastname from CUSTOMER table and used customer id as ref
--I added WHERE condition to see if any null values. Since it is full join, I used IS NULL for the right and left tables.
SELECT rental.rental_id,customer.first_name,customer.last_name FROM customer
FULL JOIN rental ON customer.customer_id = rental.customer_id
WHERE customer.first_name IS NULL OR customer.first_name IS NULL OR rental.rental_id IS NULL ;

