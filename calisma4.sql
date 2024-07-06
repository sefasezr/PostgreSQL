-- CREATE TABLE <table_name> (
-- 	<column_name> <data_type> <constraint>
-- 	...
-- 	...
-- )

CREATE TABLE author(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100),
	birthday DATE
);

SELECT * FROM author;

INSERT INTO author (first_name,last_name,email,birthday) 
VALUES
	('Haruki','Murakami','haruki@murakami.com','1948-11-07'),
	('Sabahattin','Ali','sabahattin@ali.com','1914-07-11'),
    ('Orhan','Pamuk','orhan@pamuk.com','1950-04-14'),
	('Halide Edip','Adıvar','halide@edip.com','1884-07-11'),
	('Zygmunt','Bauman','zygmunt@ali.com','1911-07-12');

CREATE TABLE author2 (LIKE author);

SELECT * FROM author2;

INSERT INTO author2
SELECT * FROM author
WHERE first_name='Sabahattin';

CREATE TABLE author3 AS 
SELECT * FROM author;

SELECT * FROM author3;

DROP TABLE IF EXISTS author3 ;

DROP TABLE author2;

--------------------------------------------------------------------------------
	
SELECT * FROM author;

-- UPDATE <tablo_adı>
-- SET <sütun_adı> = değer, 
--     <sütun_adı> = değer,
--     ----
-- WHERE <koşul_adı>;

UPDATE author
SET first_name = 'Emrah Safa' ,
	last_name = 'Gürkan' ,
	email = 'emrah@gurkan.com' ,
	birthday = '1980-01-01'
WHERE id = 10;

UPDATE author
SET first_name = 'XXXX',
    last_name = 'YYYY'
WHERE first_name LIKE 'V%';

UPDATE author
SET last_name = 'UPDATE'
WHERE first_name = 'Ebonee'
RETURNING *;                      --RETURNING yaptığımız değişikliği en son bize gösterir

-- DELETE FROM <tablo_adı>
-- WHERE <koşul_adı>;

DELETE FROM author
WHERE id >11
RETURNING *;                      --11'den buyuk id'li tüm verileri silip sildiklerini bize gösterdi

CREATE DATABASE test;


CREATE TABLE tedarikciler1(
	vergi_no INTEGER PRIMARY KEY,
	firma_ismi VARCHAR(50),
	irtibat_ismi VARCHAR(50)
);

CREATE TABLE urunler1(
	ted_vergino INTEGER,
	urun_id INTEGER,
	urun_isim VARCHAR(50),
	musteri_isim VARCHAR(50),
	FOREIGN KEY (ted_vergino) REFERENCES tedarikciler1 (vergi_no)
);

UPDATE urunler1
SET urun_isim = (SELECT firma_ismi FROM tedarikciler1 WHERE irtibat_ismi = 'Adam Eve')
WHERE musteri_isim = 'Ali Bak';

UPDATE urunler1
SET musteri_isim = (SELECT irtibat_ismi FROM tedarikciler1 WHERE firma_ismi = 'Apple') 
WHERE urun_isim = 'Laptop';






