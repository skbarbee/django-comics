--- /i seed.sql
\c comics3;

-- ---Publisher
-- INSERT INTO api_publisher(publisher_name, created_at, updated_at) VALUES
-- ('Marvel', now(), now());
-- INSERT INTO api_publisher (publisher_name, created_at, updated_at) VALUES
-- ('Marvel Comics',now(), now());
-- INSERT INTO api_publisher (publisher_name, created_at, updated_at) VALUES
-- ('DC',now(), now());
-- INSERT INTO api_publisher (publisher_name, created_at, updated_at) VALUES
-- ('Image',now(), now());
-- INSERT INTO api_publisher(publisher_name, created_at, updated_at) VALUES
-- ('BOOM!',now(), now());


-- --- Author
-- INSERT INTO api_author (first_name, last_name, created_at, updated_at  ) VALUES
-- ('Eve', 'Ewing',now(), now());
-- INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
-- ('Cody', 'Ziglar', now(), now());
-- INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
-- ('G.Willow', 'Wilson', now(), now());
-- INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
-- ('W.Maxwell', 'Prince', now(), now());
-- INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
-- ('R.L.', 'Stine', now(), now());

-- ---Illustators
-- INSERT INTO api_illustrator (first_name, last_name, created_at, updated_at ) VALUES
-- ('Luciano', 'Vecchio',now(), now());
-- INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
-- ('Kevin', 'Libranda',now(), now());
-- INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
-- ('Paco', 'Medina',now(), now());
-- INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
-- ('Marcio', 'Takara',now(), now());
-- INSERT INTO api_illustrator (first_name, last_name, created_at, updated_at ) VALUES
-- ('Martin', 'Morazzo',now(), now());
-- INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
-- ('Patrick', 'Cavanaugh',now(), now());

-- ---Characters
-- INSERT INTO api_character  (real_name, alias, details, created_at, updated_at) VALUES
-- ('Riri Williams', 'Ironheart', 'Lady Ironman',now(), now());
-- INSERT INTO api_character   (real_name, alias, details, created_at, updated_at)  VALUES
-- ('Miles Morales', 'Spider-man', 'Young Spider-man',now(), now());
-- INSERT INTO api_character   (real_name, alias, details, created_at, updated_at)  VALUES
-- ('Pamela Isley', 'Posion Ivy', 'Good with plants',now(), now());
-- INSERT INTO api_character   (real_name, alias, details, created_at, updated_at)  VALUES
-- ('Riccardus', 'Ice Cream Man', 'Pretty Creepy Dude',now(), now());
-- INSERT INTO api_character   (real_name, alias, details, created_at, updated_at)  VALUES
-- ('Tony Stark', 'Iron Man', 'Male Ironheart',now(), now());

--ComicBooks
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Ironheart: Meant To Fly',1, '1', '11/10/2020','https://i.annihil.us/u/prod/marvel/i/mg/d/00/5f91ea568fcc5/clean.jpg', now(), now())