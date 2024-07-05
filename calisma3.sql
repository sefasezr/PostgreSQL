--SELECT DISTINCT replacement_cost FROM film;

-- SELECT COUNT (*) FROM actor
-- WHERE first_name ='Penelope';           --Count Penelope olanları saydı

-- SELECT COUNT(*) FROM actor
-- WHERE first_name LIKE 'A%'                 --Count ismi A ile başlayanları saydı

--SELECT COUNT (DISTINCT first_name) FROM actor  --tekrarsız isimleri alıp eleman sayisini sayar

--SELECT COUNT (DISTINCT length) FROM film;   --birbirinden farklı kaç uzunluk oldugunu bulmamıza yaradı

--ODEV 4
-- --1)
-- SELECT DISTINCT replacement_cost FROM film;
-- --2)
-- SELECT COUNT(DISTINCT replacement_cost) FROM film;
-- --3)
-- SELECT COUNT(title) FROM film
-- WHERE title LIKE 'T%' AND rating ='G';
-- --4)
-- SELECT COUNT(country) FROM country
-- WHERE length(country) = 5;
-- --5)
-- SELECT COUNT(city) FROM city
-- WHERE city ILIKE '%r';

--SELECT COUNT (DISTINCT length) FROM film
--WHERE title LIKE ('T%');

--SELECT * FROM film
--ORDER BY title ASC;        --VERİLERİ BAŞLIĞA GÖRE ARTAN ŞEKİLDE SIRALAR ASC YAZMAZSAK DA DEFAULT ODUR

--SELECT * FROM film
--ORDER BY title DESC;         --DESC azalan şekilde sıralıyor

--SELECT title,length FROM film
--ORDER BY length DESC;

-- SELECT title,rental_rate,length FROM film
-- WHERE title LIKE 'A%' 	
-- ORDER BY rental_rate ASC, length DESC ;

-- SELECT title,rating,length FROM film
-- WHERE rating = 'G'
-- ORDER BY length DESC;

-- SELECT * FROM film
-- WHERE rental_rate = 4.99
-- ORDER BY length
-- LIMIT 10;

-- SELECT * FROM film
-- WHERE replacement_cost = 14.99 AND rental_rate = 0.99
-- ORDER BY length DESC 
-- LIMIT 7;

-- SELECT * FROM country
-- OFFSET 6                                  --OFFSET direkt olarak veri atlamak için kullanılır
-- LIMIT 4;                                  --LIMIT dedigimiz zaman ornegin ilk 4 veriyi yaz

-- SELECT * FROM actor
-- WHERE first_name ='Penelope'
-- ORDER BY last_name
-- OFFSET 2
-- LIMIT 1;

-- --ODEV 4
-- --1)
-- SELECT title,length FROM film
-- WHERE title LIKE '%n'
-- ORDER BY length DESC
-- LIMIT 5;
-- --2)
-- SELECT title,length FROM film
-- WHERE title LIKE '%n'
-- ORDER BY length ASC
-- OFFSET 5
-- LIMIT 5;
-- --3)
-- SELECT * FROM customer
-- WHERE store_id =1
-- ORDER BY last_name
-- LIMIT 4;


-- SELECT MAX(rental_rate) FROM film;   --rental_rate max değerini verir
-- SELECT MAX(replacement_cost) FROM film    --replacementin max değerini verri min için de geçerli
-- SELECT MIN(length) FROM film 

--SELECT AVG(length) FROM film   --film tablosundaki uzunluğun ortalamsını alır

--SELECT ROUND(AVG(length),3) FROM film        --ROUND virgünden sonraki basamak sayısını belli bir sayıya düşürmeye yarar 3e düşürdük

-- SELECT SUM(rental_rate) FROM film           --rental_rate değerlerini topladık yazdırdık

-- SELECT ROUND(SUM(rental_rate),0) FROM film

-- SELECT MAX(length),MIN(length), SUM(replacement_cost) FROM film;

SELECT MAX(length) FROM film
WHERE rental_rate IN (0.99,2.99);

--SELECT MAX(length), rental_rate FROM film   --Group BY hatası aldık aggregate fonk ile değer alırken bir de sütun yazdıramayız

--ODEV 5
--1)
-- SELECT ROUND(AVG(rental_rate),2) FROM film;
-- --2)
-- SELECT COUNT(title) FROM film
-- WHERE title LIKE 'C%';
-- --3)
-- SELECT MAX(length) FROM film
-- WHERE rental_rate = 0.99;
-- --4)
-- SELECT COUNT(DISTINCT replacement_cost) FROM film
-- WHERE length>150


 SELECT rental_rate, MAX(length) FROM film 
 GROUP BY rental_rate;                               --Filmleri grupladık rental_rate'e göre uzunluk ölçmesi

 SELECT rental_rate, COUNT(*),SUM(length) FROM film
 GROUP BY rental_rate;                               --SELECT kısmına GROUP BY da kullandıgımız bir şeyi yada aggregate fonksiyon yazabiliriz
                                                  --ikisini de yazdık YANİ GROUP BY rental_rate iken biz SELECT yanina title yazamayiz
 SELECT rating,COUNT(*) FROM film
 GROUP BY rating;                               --HERBİR ratinge karşılık film sayısını bulduran sorgu

 SELECT replacement_cost,rental_rate, MIN(length) FROM film
 GROUP BY replacement_cost,rental_rate                          --ikili gruplandırma da yapabiliriz belki daha fazlası da deneyeceğim
 ORDER BY replacement_cost DESC,rental_rate DESC;               --azalana göre sıraladım

 --SELECT COUNT(DISTINCT replacement_cost) FROM film

-- SELECT replacement_cost,rental_rate, MIN(length) FROM film
-- GROUP BY replacement_cost,rental_rate                          
-- ORDER BY MIN(length)
-- LIMIT 8;

-- SELECT rental_rate, COUNT(*) FROM film
-- GROUP BY rental_rate
-- HAVING COUNT(*) >325;

-- SELECT rental_rate, COUNT(*) FROM film
-- WHERE rental_rate !=2.99
-- GROUP BY rental_rate;

-- SELECT COUNT(*) FROM payment;

-- SELECT staff_id, COUNT(*) FROM payment
-- GROUP BY staff_id
-- HAVING COUNT(*) > 7300;

-- SELECT customer_id, SUM(amount) FROM payment
-- GROUP BY customer_id
-- HAVING SUM(amount) > 100
-- ORDER BY SUM(amount) DESC
-- LIMIT 1

--ODEV 7)
--1)
SELECT rating , COUNT(*) FROM film
GROUP BY rating;
--2)
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;
--3)
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;
--4)
SELECT country_id, COUNT(*) from city
GROUP BY country_id
ORDER BY COUNT(*) DESC
LIMIT 1;



















