/*
1. film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
2. film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci 5 filmi sıralayınız.
3. customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

*/

--First
SELECT title,length FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;


--Second
SELECT title,length FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;


--Third
SELECT * FROM customer
WHERE store_id=1
ORDER BY last_name DESC
LIMIT 4;