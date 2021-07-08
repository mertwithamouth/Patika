/*
1) country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.

2. country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.

3. film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren

4.film isimlerini sıralayınız. 4. film tablosunda bulunan tüm sütunlardaki verilerden title 'C' ka
        rakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

*/


--First
SELECT country FROM country
WHERE country LIKE 'A%a'

--Second
SELECT country FROM country
WHERE country ILIKE '%_____n';

--Third
SELECT title FROM film
WHERE title ILIKE '%t%'

--Fourth
SELECT * FROM film
WHERE title LIKE 'C%' AND length >90 AND rental_rate=2.99