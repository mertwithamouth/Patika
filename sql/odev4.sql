/*


1. film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
2. film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
3. film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
4. country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
5. city tablosundaki şehir isimlerinin kaçtanesi 'R' veya r karakteri ile biter?

*/




--First
SELECT DISTINCT replacement_cost FROM film;

--Second
SELECT COUNT(DISTINCT replacement_cost) FROM film;


--Third
SELECT COUNT(title) FROM film
WHERE title LIKE 'T%' AND rating='G';

--Fourth
SELECT COUNT(country) FROM country
WHERE country LIKE '_____';

--Fifth
SELECT COUNT(city) FROM city
WHERE city ILIKE '%r';
