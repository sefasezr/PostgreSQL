CREATE TABLE book(
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	page_number INTEGER NOT NULL,
	author_id INTEGER REFERENCES author(id)
);

SELECT * FROM book;
SELECT * FROM author;

INSERT INTO book (title,page_number,author_id) values ('White Banners',62,1);
INSERT INTO book (title,page_number,author_id) values ('Saving Sliloh',580,10);
INSERT INTO book (title,page_number,author_id) values ('Abe Lincoln in Illionis',105,5);
INSERT INTO book (title,page_number,author_id) values ('Apache Territory',286,1);
INSERT INTO book (title,page_number,author_id) values ('White Banners',402,9);
INSERT INTO book (title,page_number,author_id) values ('White Banners',164,5);
INSERT INTO book (title,page_number,author_id) values ('White Banners',84,10);
INSERT INTO book (title,page_number,author_id) values ('White Banners',265,9);
INSERT INTO book (title,page_number,author_id) values ('White Banners',838,8);
INSERT INTO book (title,page_number,author_id) values ('White Banners',586,1);
INSERT INTO book (title,page_number,author_id) values ('White Banners',580,9);
INSERT INTO book (title,page_number,author_id) values ('White Banners',788,8);
INSERT INTO book (title,page_number,author_id) values ('White Banners',834,1);

SELECT * FROM book
WHERE author_id = 1;


SELECT * FROM book
JOIN author ON author.id = book.author_id;
-----------------------------------------------------------------------------

CREATE TABLE test2(
	float4_type FLOAT4,
	float8_type FLOAT8,
	decimal_type DECIMAL
);

INSERT INTO test2
VALUES
	(1.123456445566421,1.123456445566421,1.123456445566421);

SELECT * FROM test2;

SELECT(10+2);
SELECT(10.0);
SELECT(10.0::INTEGER);
SELECT(10.444444444444444444444444444444444444444444444444444::NUMERIC);


--GENEL OLARAK TAM SAYILARDAN INTEGER ONDALIKLARDA NUMERIC KULLANIRIZ..







