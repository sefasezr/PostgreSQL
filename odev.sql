--ODEV8
--1)
CREATE TABLE employee (
	id SERIAL,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);
--2)
insert into employee (name, birthday, email) values ('Brooks', '1931-04-12', 'bbound0@usda.gov');
insert into employee (name, birthday, email) values ('Merna', '1931-01-11', 'mswyn1@soup.io');
insert into employee (name, birthday, email) values ('Nariko', '1908-06-18', 'nweblin2@usatoday.com');
insert into employee (name, birthday, email) values ('Sean', '1927-05-23', 'sgrover3@intel.com');
insert into employee (name, birthday, email) values ('Margaretha', '1965-09-22', 'mkernocke4@etsy.com');
insert into employee (name, birthday, email) values ('Clarance', '1910-01-29', 'cspilling5@engadget.com');
insert into employee (name, birthday, email) values ('Meredithe', '1984-12-16', 'mscrowton6@creativecommons.org');
insert into employee (name, birthday, email) values ('Andras', '1946-10-10', 'ahuebner7@barnesandnoble.com');
insert into employee (name, birthday, email) values ('Kaylyn', '1917-01-05', 'kmarian8@canalblog.com');
insert into employee (name, birthday, email) values ('Kristyn', '1936-08-26', 'kchasmar9@g.co');
insert into employee (name, birthday, email) values ('Malissia', '1913-06-08', 'msevillea@accuweather.com');
insert into employee (name, birthday, email) values ('Millie', '1920-07-23', 'mhuckeb@issuu.com');
insert into employee (name, birthday, email) values ('Amelie', '1972-06-29', 'aticec@thetimes.co.uk');
insert into employee (name, birthday, email) values ('Lindsay', '2000-07-01', 'lrisbyd@virginia.edu');
insert into employee (name, birthday, email) values ('Freddie', '1939-10-20', 'froomee@amazon.co.jp');
insert into employee (name, birthday, email) values ('Brucie', '1914-03-05', 'bwheeltonf@gov.uk');
insert into employee (name, birthday, email) values ('Rees', '1931-12-13', 'rbernardyg@craigslist.org');
insert into employee (name, birthday, email) values ('Johan', '1925-08-06', 'jmuttitth@liveinternet.ru');
insert into employee (name, birthday, email) values ('Almire', '1977-11-28', 'agarthlandi@npr.org');
insert into employee (name, birthday, email) values ('Auberta', '1945-05-06', 'apoynterj@plala.or.jp');
insert into employee (name, birthday, email) values ('Lawry', '1957-05-13', 'lraffonk@prnewswire.com');
insert into employee (name, birthday, email) values ('Marve', '1996-02-06', 'mroswarnel@marriott.com');
insert into employee (name, birthday, email) values ('Beatriz', '1923-07-12', 'bbreederm@virginia.edu');
insert into employee (name, birthday, email) values ('Doralia', '1975-04-03', 'dgilbertn@bravesites.com');
insert into employee (name, birthday, email) values ('Lorenza', '1973-05-26', 'lellwando@exblog.jp');
insert into employee (name, birthday, email) values ('Douglass', '1911-02-20', 'dgirodp@china.com.cn');
insert into employee (name, birthday, email) values ('Stefan', '1927-11-15', 'slandreq@t.co');
insert into employee (name, birthday, email) values ('Mord', '1977-07-16', 'mbehninckr@independent.co.uk');
insert into employee (name, birthday, email) values ('Karole', '1918-11-19', 'ksteggless@geocities.jp');
insert into employee (name, birthday, email) values ('Kiel', '1999-08-17', 'kdilstont@illinois.edu');
insert into employee (name, birthday, email) values ('Bev', '1907-09-24', 'bbellasu@purevolume.com');
insert into employee (name, birthday, email) values ('Uri', '1912-01-10', 'uodoireidhv@fc2.com');
insert into employee (name, birthday, email) values ('Aubert', '1976-07-19', 'astraniow@comcast.net');
insert into employee (name, birthday, email) values ('Basia', '1905-12-04', 'bcarusx@paypal.com');
insert into employee (name, birthday, email) values ('Ikey', '1998-07-21', 'imcgennisy@simplemachines.org');
insert into employee (name, birthday, email) values ('Irma', '1914-12-30', 'iohernz@ft.com');
insert into employee (name, birthday, email) values ('Burk', '1924-11-21', 'bcarik10@princeton.edu');
insert into employee (name, birthday, email) values ('Hesther', '1922-11-19', 'hmilligan11@omniture.com');
insert into employee (name, birthday, email) values ('Hedvig', '1923-11-08', 'hogleasane12@arizona.edu');
insert into employee (name, birthday, email) values ('Tait', '1947-10-02', 'tperrygo13@elpais.com');
insert into employee (name, birthday, email) values ('Devina', '1990-02-17', 'dlampl14@clickbank.net');
insert into employee (name, birthday, email) values ('Portie', '1969-06-21', 'phadwen15@nature.com');
insert into employee (name, birthday, email) values ('Morton', '1973-05-26', 'mkobsch16@reddit.com');
insert into employee (name, birthday, email) values ('Franni', '1941-12-18', 'fmcdougall17@moonfruit.com');
insert into employee (name, birthday, email) values ('Abby', '1963-02-04', 'amcghee18@qq.com');
insert into employee (name, birthday, email) values ('Agnella', '1971-04-22', 'adee19@bandcamp.com');
insert into employee (name, birthday, email) values ('Sabra', '1961-07-11', 'sboatswain1a@wp.com');
insert into employee (name, birthday, email) values ('Walt', '1940-06-27', 'webbrell1b@php.net');
insert into employee (name, birthday, email) values ('Quintina', '1904-08-09', 'qclynman1c@bluehost.com');
insert into employee (name, birthday, email) values ('Velma', '1975-12-03', 'vlivard1d@e-recht24.de');
--3)
UPDATE employee
SET name = 'SEFA',
    birthday = '2004-01-02',
    email = 'sefa@sezer.com'
WHERE id = 1
RETURNING *;

UPDATE employee
SET name = 'ADEM',
	birthday = '2000-05-30',
	email = 'adem@sezer.com'
WHERE name = 'Velma';	

--4)
DELETE FROM employee
WHERE id = 2;

DELETE FROM employee
WHERE name = 'Sean';






