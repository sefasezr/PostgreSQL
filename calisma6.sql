CREATE TABLE users(
	id SERIAL PRIMARY KEY,
	username VARCHAR(20) ,
	email VARCHAR(50),
	age INTEGER
);

INSERT INTO users (username,email,age) VALUES ('tester','tester@gmail.com',23);
INSERT INTO users (email,age) VALUES ('gamer@gmail.com',35);

SELECT * FROM users;

--ŞİMDİ BURADA username kısmına bir adet null giriş yaptık ancak birdaha böyle bir şey yaşansın istemiyoruz
--Bu yüzden bu tabloyu silmeden yenisini oluşturmadan ALTER komutu ile güncelleyeceğiz

ALTER TABLE users
ALTER COLUMN username
SET NOT NULL;

--Şimdi burada hata verdi hata şu username sütununu NOT NULL yapmak istiyorsun ancak users tablosu null username ifade içeriyor
-- önce null username'den kurtul.

DELETE FROM users
WHERE username IS NULL;

--NULL username'i sildik şimdi ALTER kullanacağız

ALTER TABLE users
ALTER COLUMN username
SET NOT NULL;

SELECT * FROM users;
--tekrar username null girmeyi deneyeceğim
INSERT INTO users (email,age) VALUES ('gamer@gmail.com',35);   --HATA VERDI

INSERT INTO users (username,email,age) VALUES ('','gamer@gmail.com',35);

--ŞİMDİ TABLODA HALİ HAZIRDA BULUNAN BİR email gireceğim

INSERT INTO users (username,email,age) VALUES ('tester3','tester3@gmail.com',55);

ALTER TABLE users
ADD UNIQUE (email);

--HATA VERDİ CUNKU UNIQUE olmayı bozucak şekilde aynı mailden 2 tane var birini sileceğiz

ALTER TABLE users
ADD CHECK (age>18);

INSERT INTO users (username,email,age) VALUES('messi','messi@gmail.com',33);

CREATE TABLE students (
	id SERIAL,
	name VARCHAR(30) NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	teacher_name VARCHAR(35) REFERENCES teachers(name)
)

CREATE TABLE teachers (
	name VARCHAR(30) PRIMARY KEY,
	brans VARCHAR(30) NOT NULL
);

SELECT * FROM teachers;
SELECT * FROM students;

ALTER TABLE teachers 
ADD CHECK (brans LIKE 'M%')	;

INSERT INTO teachers VALUES ('Mehmet','Matematik');
INSERT INTO teachers VALUES ('ahmet','Muzik');

INSERT INTO students (name,lastname,teacher_name) VALUES ('Sefa','Sezer','ahmet')

SELECT * FROM teachers
JOIN students ON students.teacher_name = teachers.name
