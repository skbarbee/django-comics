--DIRECTIONS--
--In order to keep the pk's in order 
--psql
--DROP DATABASE comics3;
--CREATE DATABASE comics3;
--(Then leave PSQL and do) python manage.py migrate 
--Then 
--psql 
--- \i seed.sql;
\c comicsdatabase;



-- //////////
-- users
-- //////////
-- 1
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('super@user.com', 'Test2022!', 'True', 'True', 'True');

-- 2
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('super1@user.com', 'Test2022!', 'True', 'True', 'True');

-- 3
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('super2@user.com', 'Test2022!', 'True', 'True', 'True');

-- 4
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('client@c.com', 'Test2022!', 'False', 'True', 'False');

-- 5
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('client2@c.com', 'Test2022!', 'False', 'True', 'False');

-- 6
INSERT INTO api_user(email, password, is_superuser, is_active, is_staff) 
VALUES('client3@c.com', 'Test2022!', 'False', 'True', 'False');



-- SELECT * FROM api_user;

---Publisher
--pk:1
INSERT INTO api_publisher(publisher_name, created_at, updated_at) VALUES
('Marvel', now(), now());

--pk:2
INSERT INTO api_publisher (publisher_name, created_at, updated_at) VALUES
('Marvel Comics',now(), now());

--pk:3
INSERT INTO api_publisher (publisher_name, created_at, updated_at) VALUES
('DC',now(), now());

--pk:4
INSERT INTO api_publisher (publisher_name, created_at, updated_at) VALUES
('Image',now(), now());

--pk:5
INSERT INTO api_publisher(publisher_name, created_at, updated_at) VALUES
('BOOM!',now(), now());

--pk:6
INSERT INTO api_publisher(publisher_name, created_at, updated_at) VALUES
('DC Comics', now(), now());


--- Author

--pk:1
INSERT INTO api_author (first_name, last_name, created_at, updated_at  ) VALUES
('Eve', 'Ewing',now(), now());
--pk:2
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Cody', 'Ziglar', now(), now());

--pk:3
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('G.Willow', 'Wilson', now(), now());

--pk:4
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('W.Maxwell', 'Prince', now(), now());

--pk:5
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('R.L.', 'Stine', now(), now());

---Illustators
--pk:1
INSERT INTO api_illustrator (first_name, last_name, created_at, updated_at ) VALUES
('Luciano', 'Vecchio',now(), now());
--pk:2
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Kevin', 'Libranda',now(), now());
--pk:3
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Paco', 'Medina',now(), now());
--pk:4
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Marcio', 'Takara',now(), now());
--pk:5
INSERT INTO api_illustrator (first_name, last_name, created_at, updated_at ) VALUES
('Martin', 'Morazzo',now(), now());
--pk:6
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Patrick', 'Cavanaugh',now(), now());

---Characters
--pk:1
INSERT INTO api_character  (real_name, alias, details, created_at, updated_at) VALUES
('Riri Williams', 'Ironheart', 'Lady Ironman',now(), now());

--pk:2
INSERT INTO api_character   (real_name, alias, details, created_at, updated_at)  VALUES
('Miles Morales', 'Spider-man', 'Young Spider-man',now(), now());

--pk:3
INSERT INTO api_character   (real_name, alias, details, created_at, updated_at)  VALUES
('Pamela Isley', 'Posion Ivy', 'Good with plants',now(), now());

--pk:4
INSERT INTO api_character   (real_name, alias, details, created_at, updated_at)  VALUES
('Riccardus', 'Ice Cream Man', 'Pretty Creepy Dude',now(), now());

--pk:5
INSERT INTO api_character   (real_name, alias, details, created_at, updated_at)  VALUES
('Tony Stark', 'Iron Man', 'Male Ironheart',now(), now());

--pk:6
INSERT INTO api_character   (real_name, alias, details, created_at, updated_at)  VALUES
('Bruce Banner', 'Hulk', 'Scientist who turns into giant green dude when he rages',now(), now());

--ComicBooks

--pk:1
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Ironheart: Meant To Fly',1, '1', '11/10/2020','https://i.annihil.us/u/prod/marvel/i/mg/d/00/5f91ea568fcc5/clean.jpg', now(), now());

--pk:2 
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('What If... Miles Morales',5, '2', '06/06/2022','https://i.annihil.us/u/prod/marvel/i/mg/9/30/62b9e06b0f8d0/clean.jpg', now(), now());

--ComicBook Authors

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('1','1');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('2','1');

--ComicBook Illustrators

INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('1','1');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('1','2');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('2','3');

--ComicBook Characters

INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('1','1');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('2','2');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('2','6');





-- Other useful commands:
-- UPDATE api_user SET email='kiki@k.com' WHERE email = 'kiki@m.com';
-- SELECT * FROM api_user;

-- Function         | Command               | Description
-- quit             |   \q                  | quit the shell
-- help             |   \?                  | list help for the psql shell
-- help             |   \h                  | list all possible SQL commands
-- help             |   \h SELECT           | get help for a specific SQL command
-- list             |   \l                  | lists all availible dbs found in the cluster
-- connect          |	\c                  | connect to a database
-- describe tables  |   \dt                 | list all the tables in the current database
-- describe table   |	\d table_name       | lists a table's columns and datatypes
-- edit command     |	\e                  | opens last command in your shell's default editor
-- expanded display |   \x off (on or auto) | will change the wrap behavior of column display
-- import           |	\i file-name.sql    | imports a .sql file and runs the commands