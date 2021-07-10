/*
1. actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

2. actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

3. actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

4. İlk 3 sorguyu tekrar eden veriler için de yapalım.
*/



--First

(
SELECT first_name FROM actor
)
UNION
(
SELECT first_name FROM customer
)

--Second
(
SELECT first_name FROM actor
)
INTERSECT
(
SELECT first_name FROM customer
)

--Third
(
SELECT first_name FROM actor
)
EXCEPT
(
SELECT first_name FROM customer
)

--Fourth
--We add ALL to the end of every methods to see data that repeats
--First

(
SELECT first_name FROM actor
)
UNION ALL
(
SELECT first_name FROM customer
)

--Second
(
SELECT first_name FROM actor
)
INTERSECT ALL
(
SELECT first_name FROM customer
)

--Third
(
SELECT first_name FROM actor
)
EXCEPT ALL
(
SELECT first_name FROM customer
)