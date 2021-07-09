
/*
1. city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

2. customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz
    INNER JOIN sorgusunu yazınız. 

3. customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
    isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

*/


--First
--In this example city and country tables has country_id column. So this is the column we are going to use as ref
SELECT city.city,country.country FROM country
INNER JOIN city ON city.country_id = country.country_id;

--Second
--Takes first name and last name columns from customer table and payment id from PAYMENT table and since they both have customer id, used that as ref
SELECT customer.first_name,customer.last_name,payment.payment_id FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id;

--Third
--Takes rental id from RENTAL table and firstname, lastname from CUSTOMER table and used customer id as ref
SELECT rental.rental_id,customer.first_name,customer.last_name FROM customer
INNER JOIN rental ON customer.customer_id = rental.customer_id;