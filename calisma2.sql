
--select * from actor;

--SELECT first_name, last_name FROM actor;

--SELECT title,length FROM film 
--WHERE rental_rate =0.99;

--select * from actor
--where first_name = 'Penelope';

--SELECT * FROM film
--WHERE rental_rate <> 4.99   -- <> ile != aynı şeyi yaparlar

--SELECT * FROM film
--WHERE rental_rate = 4.99 OR rental_rate = 2.99

--SELECT * FROM film
--WHERE rental_rate = 4.99 AND rental_duration = 3 AND replacement_cost > 20

--SELECT * FROM film  
--WHERE replacement_cost < 12 OR replacement_cost > 25;

--SELECT * FROM film
--WHERE NOT (NOT (rental_rate = 4.99 AND replacement_cost = 20.99));

--SELECT * FROM film
--WHERE NOT length > 110;         --NOT DEĞİLİ GİBİ DEĞER GÖRÜR TRUE OLANI FALSE YAPAR İF YAPISINDAKİ GİBİ


--SELECT * FROM actor
--WHERE  first_name = 'Penelope' AND last_name ='Monroe' OR first_name ='Joe' AND last_name = 'Swank';

--ODEV
--1)
--SELECT title, description FROM film;
--2)
--SELECT * FROM film
--WHERE length>60 AND length<75;
--3)
--SELECT * FROM film
--WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost=28.99);
--4)
--SELECT last_name FROM customer
--SELECT first_name = 'Mary';
--5)
--SELECT * FROM film
--WHERE NOT length >50 AND NOT (rental_rate = 2.99 OR rental_rate = 4.99);

--SELECT title, length FROM film
--WHERE length>=90 AND length<=120;

--Üstteki yapı ile 90 ve 120dk arası içerikleri aldık 
--Aynısını between ile yapabiliriz

--SELECT title,length FROM film
--WHERE length BETWEEN 90 AND 120;

--SELECT title,length FROM film
--WHERE length NOT BETWEEN 90 AND 120;   90 VE 120DKsi arasında olmayan içerikleri aldı NOT ile
                                       --Aslında length <90 OR length>120 ye dönüştü NOT ile

--SELECT rental_rate, replacement_cost FROM film
--WHERE (rental_rate BETWEEN 2 AND 4) AND (replacement_cost BETWEEN 10 AND 20)  

--SELECT * FROM film
--WHERE length=40 OR length =50 OR length =60;
--alt ve üst aynı görevdedir
--SELECT * FROM film
--WHERE length IN(40,50,60);

--SELECT * FROM film
--WHERE replacement_cost NOT IN(10.99,12.99,16.99); -- BURADA DA NOT YAPISI KULLANILABİLİR

--ODEV
--1)
--SELECT * FROM film
--WHERE (replacement_cost BETWEEN 12.99 AND 16.99) AND (replacement_cost <16.99); 
--2)
--SELECT first_name, last_name FROM actor
--WHERE first_name IN('Penelope','Nick','Ed');
--3)
--SELECT * FROM film
--WHERE rental_rate IN (0.99,2.99,4.99) AND replacement_cost IN (12.99,15.99,28.99);

--SELECT * FROM customer
--WHERE first_name LIKE 'M%';       --baş harfi M olan   %=M'nin yanında ne varsa onu simgeler hiçbir şey olmayadabilir

--SELECT * FROM customer
--WHERE first_name LIKE '%y';        --son harfi y olan   %=y'nin solundaki kelimenin devamını simgeler ve sonunda y var gibi bir şey

--SELECT * FROM customer
--WHERE first_name LIKE 'A%y';          --A ile Başlayıp y ile biten kelime sorgusu %=ortada karakterler olabilir ya da olmayadabilir

--SELECT * FROM customer
--WHERE first_name LIKE 'A%' AND last_name LIKE 'A%';        --AD VE SOYAD A ile başlasın dedik

--SELECT * FROM customer
--WHERE first_name LIKE 'a%';              --a ile başlayan herhangi bir isim olmadigi icin veri gelmeyecek
                                         --bunu çözmenin yolu ILIKE komutudur

-- SELECT * FROM customer
-- WHERE first_name ILIKE 'a%';             --LIKE case sensitive dikkat eder ancak ILIKE ETMEZ IgnoreCase gibi düşünebilirim

-- SELECT * FROM customer
-- WHERE first_name LIKE 'D%n';           --baş harfi D son harfi n

-- SELECT * FROM customer
-- WHERE first_name NOT LIKE 'D%n';       --baş harfi D VE son harfi n olmayanları getirir aslında üstteki komutun zıttı

-- SELECT * FROM customer 
-- WHERE first_name LIKE 'J_an';             --Aradaki harfi belirlemedik diğer şartları sağlayanları getirdi

-- SELECT * FROM customer 
-- WHERE first_name LIKE 'J_';   --Jo, JA, Jx, J?   ASLINDA % VE _ karakter tutar ancak _ tek karakter tutar

-- SELECT * FROM actor
-- WHERE first_name ~~* 'b%';                 -- ~~ işareti de LIKE gibidir
                                           -- ~~* işareti ise ILIKE anlamına gelir ILIKE=ignorecase

--SELECT * FROM actor
--WHERE first_name !~~* 'b%';                --!~~* NOT ILIKE gibi oldu

--ODEV
--1)
-- SELECT country FROM country
-- WHERE country LIKE 'A%a';
-- --2)
-- SELECT country FROM country
-- WHERE (country LIKE '%_____n');
-- --2)
-- SELECT country FROM country
-- WHERE length(country)>5 AND country LIKE '%n';
-- --3)
-- SELECT title FROM film 
-- WHERE title ILIKE '%t%t%t%t%' ;
-- --4)
-- SELECT * FROM film
-- WHERE length(title) > 90 AND (title LIKE 'C%') AND (rental_rate = 2.99); 


















