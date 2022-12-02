--DIRECTIONS--
--In order to keep the pk's in order 
--psql

--DROP DATABASE comicsdatabase;
--CREATE DATABASE comicsdatabase;

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
--pk:6
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Jeph', 'Loeb', now(), now());
--pk:7
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Kenny', 'Porter', now(), now());
--pk:8
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Devin', 'Grayson', now(), now());
--pk:9
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Stephanie', 'Williams', now(), now());
--pk:10
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Ro', 'Stein', now(), now());
--pk:11
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Ted', 'Brandt', now(), now());
--pk:12
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Jadzia', 'Axelrod', now(), now());
--pk:13
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Alyssa', 'Wong', now(), now());
--pk:14
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Tini', 'Howard', now(), now());
--pk:15
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Greg', 'Lockard', now(), now());
--pk:16
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Stephanie', 'Phillips', now(), now());
--pk:17
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Travis', 'Moore', now(), now());
--pk:18
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Dani', 'Fernandez', now(), now());
--pk:19
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Danny', 'Lore', now(), now());
--pk:20
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Ivan', 'Cohen', now(), now());
--pk:21
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Kevin', 'Conroy', now(), now());
--pk:22
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Meghan', 'Fitzmartin', now(), now());
--pk:23
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Paul', 'Dini', now(), now());
--pk:24
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Jody', 'Houser', now(), now());
--pk:25
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Torunn', 'Gronbekk', now(), now());
--pk:26
INSERT INTO api_author (first_name, last_name, created_at, updated_at ) VALUES
('Taboo B.', 'Earl', now(), now());

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
--pk:7
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Tim', 'Sale',now(), now());
--pk:8
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('A.L.', 'Kaplan',now(), now());
--pk:9
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Baldemar', 'Rivas',now(), now());
--pk:10
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Nick', 'Robles',now(), now());
--pk:11
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Meghan', 'Hetrick',now(), now());
--pk:12
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Ted', 'Brandt',now(), now());
--pk:13
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Ro', 'Stein',now(), now());
--pk:14
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Lynne', 'Yoshii',now(), now());
--pk:15
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('W.Scott', 'Forbes',now(), now());
--pk:16
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Evan', 'Cagle',now(), now());
--pk:17
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Giulio', 'Macaione',now(), now());
--pk:18
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Samantha', 'Dodge',now(), now());
--pk:19
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Travis', 'Moore',now(), now());
--pk:20
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Zoe', 'Thorogood',now(), now());
--pk:21
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Brittney', 'Williams',now(), now());
--pk:22
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('J.', 'Bone',now(), now());
--pk:23
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Belen', 'Ortega',now(), now());
--pk:24
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Stjepan', 'Sejic',now(), now());
--pk:25
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Sara', 'Pichelli',now(), now());
--pk:26
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Michael', 'Dowling',now(), now());
--pk:27
INSERT INTO api_illustrator  (first_name, last_name, created_at, updated_at ) VALUES
('Juan', 'Ferreyra',now(), now());

---Characters
--pk:1
INSERT INTO api_character  (real_name, alias, details, profile_picture, created_at, updated_at) VALUES
('Riri Williams', 'Ironheart', 'Lady Ironman', 'https://64.media.tumblr.com/71f4da8b8fbed98974ab625f07ff15c2/ddfde9a214927f64-70/s540x810/021d925c59e49d7937d06dbedcaacf44744fa5bf.jpg' ,now(), now());

--pk:2
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Miles Morales', 'Spider-man', 'Young Spider-man', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1f/Spider-Man_%28Miles_Morales%29.jpg/220px-Spider-Man_%28Miles_Morales%29.jpg' ,now(), now());

--pk:3
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Pamela Isley', 'Posion Ivy', 'An eco-terrorist with the power to control all plant life', 'https://upload.wikimedia.org/wikipedia/en/5/5c/Poison_Ivy_Batman_Vol_3_26.png' ,now(), now());

--pk:4
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Riccardus', 'Ice Cream Man', 'Pretty Creepy Dude', 'https://www.superherodb.com/pictures2/portraits/10/050/28562.jpg',now(), now());

--pk:5
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Tony Stark', 'Iron Man', 'Male Ironheart', 'https://i.pinimg.com/736x/22/69/19/226919e4d54a2024c252eeaf9258ea0f.jpg',now(), now());

--pk:6
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Bruce Banner', 'Hulk', 'Scientist who turns into giant green dude when he rages', 'http://www.comicartcommunity.com/gallery/data/media/340/hulk75.jpg',now(), now());

--pk:7
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Bruce Wayne', 'Batman', 'Very rich, very traumatized, obsessed with bats', 'https://static.wikia.nocookie.net/marvel_dc/images/4/4b/Batman_Vol_3_86_Textless.jpg',now(), now());

--pk:8
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Selina Kyle', 'Catwoman', 'Sometimes hero, sometimes villian, always crazy cat lady', 'https://www.dc.com/sites/default/files/imce/2020/01-JAN/CATWOMAN-80TH_5e1f916358e805.04209177.jpg',now(), now());

--pk:9
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Clark Kent, Kal-El', 'Superman', 'Faster than a speeding bullet, more powerful than a locomotive… The Man of Steel fights a never-ending battle for truth, justice, and the American way.', 'https://i.pinimg.com/736x/20/e9/9e/20e99e9e27a1e25917bc8d1968589a19.jpg',now(), now());

--pk:10
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Isaac', 'Isaac', 'Wannabe Victor Frankenstein', '',now(), now());

--pk:11
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Darkseid', 'Darkseid', 'Armed with the Anti-Life Equation, the Dark Lord of Apokolips and father of Orion seeks to control all sentient life throughout the universe…and beyond.', 'https://comicvine.gamespot.com/a/uploads/original/12/125833/3290626-dssss.png',now(), now());

--pk:12
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Wally West', 'The Flash', 'Fastest man alive!', 'https://hips.hearstapps.com/digitalspyuk.cdnds.net/12/46/comics_the_flash_1.jpg',now(), now());

--pk:13
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('John Stewart', 'Green Lantern V2', 'Trained in Giant Mech Combat to fight agains the forces of Apokolips', 'https://s3.amazonaws.com/comicgeeks/characters/avatars/50764.jpg',now(), now());

--pk:14
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Shiera Hall', 'Hawkwoman', 'Fought in World War II, before the Parademon Scout attacked the planet for the first time', 'https://s3.amazonaws.com/comicgeeks/characters/avatars/51087.jpg',now(), now());

--pk:15
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Diana of Themyscira, Diana Prince', 'Wonder Woman', 'A strong woman who loves a good accessory', 'https://images.comicbooktreasury.com/wp-content/uploads/2021/10/Wonder-Woman-Reading-Order-Jim-Lee-705x470.jpg',now(), now());

--pk:16
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Hal Jordan', 'Green Lantern V2', 'Former military test pilot, current guy with a funky ring', 'https://i.pinimg.com/originals/d5/2b/13/d52b13dbb294d7ebdc6de6e3f1635f3a.jpg',now(), now());

--pk:17
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Jonathan Samuel "John" Kent', 'Superman', 'First born son of Superman and Lois Lane', 'https://static.wikia.nocookie.net/marvel_dc/images/4/49/Superman_Son_of_Kal-El_Vol_1_10_Textless.jpg',now(), now());

--pk:18
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Damian Wayne', 'Robin', 'Son of Batman and Talia al Ghul & is the 5th Robin', 'https://static.wikia.nocookie.net/marvel_dc/images/6/61/Teen_Titans_Rebirth_Vol_1_1_Textless.jpg',now(), now());

--pk:19
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Nubia', 'Nubia', 'An honorable Amazon warrior and formerly the guardian of Dooms Doorway', 'https://static.wikia.nocookie.net/marvel_dc/images/3/31/Nubia_and_the_Amazons_Vol_1_1_Textless.jpg',now(), now());

--pk:20
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Connor Hawke', 'Green Arrow', 'One of the greatest hand to hand fighters', 'https://static.wikia.nocookie.net/marvel_dc/images/a/a9/Connor_Hawke_Prime_Earth_0002.jpg',now(), now());

--pk:21
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Barbara Gordon', 'Batgirl, Oracle', 'elite computer hacker and Gotham city vigilante', 'https://i.ebayimg.com/images/g/zbgAAOSw-Ilc-tMx/s-l1600.jpg',now(), now());

--pk:22
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Jackson Hyde', 'Aquaman, Aqualad', 'Openly gay former member of the Teen Titans', 'https://static.wikia.nocookie.net/marvel_dc/images/a/a8/Aquaman_The_Becoming_Vol_1_1_Textless.jpg',now(), now());

--pk:23
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Sojourner Mullein', 'Green Lantern', 'She is assigned a sector so far from Oa she is not sure if its been numbered, and she just refers to it as the Far Sector.', 'https://static.wikia.nocookie.net/marvel_dc/images/6/67/Far_Sector_Vol_1_1_McKelvie_Textless_Variant.jpg',now(), now());

--pk:24
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Raymond Terrill', 'The Ray', 'Light-powered superhero and member of the Justice League of America', 'https://static.wikia.nocookie.net/marvel_dc/images/8/89/Justice_League_of_America_The_Ray_Rebirth_Vol_1_1_Textless_Variant.jpg',now(), now());

--pk:25
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Katherine Kane', 'Batwoman',  'She is both Jewish and an out lesbian, playing a socialite during the day, and working as a vigilante by night', 'https://static.wikia.nocookie.net/marvel_dc/images/4/4f/Batwoman_Vol_2_9_Textless.jpg',now(), now());

--pk:26
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Timothy Drake', 'Red Robin', 'A teen vigilante who, for a time, acted as the third Robin after the death of Jason Todd. When he matured out of the role and was replaced by Damian Wayne, Tim became the vigilante Red Robin.', 'https://static.wikia.nocookie.net/marvel_dc/images/b/b6/Detective_Comics_Vol_1_939_Textless.jpg',now(), now());

--pk:27
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Harleen Frances Quinzel', 'Harley Quinn', 'A criminal psychologist turned flamboyant criminal menace.', 'https://i.pinimg.com/originals/84/e6/54/84e65462acb487191f7fc9fed3614eed.jpg',now(), now());

--pk:28
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Jess Chambers', 'Kid Quick', 'Non binary member of the Earth 11 Teen Justice', 'https://comicvine.gamespot.com/a/uploads/square_small/12/124259/7824519-7756614-01-variant.jpg',now(), now());

--pk:29
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Kamala Khan', 'Ms. Marvel', 'A teenage Pakistani-American from Jersey City, New Jersey with body-morphing abilities who discovers that she has Inhuman genes', 'https://comicvine.gamespot.com/a/uploads/scale_medium/6/67663/6948541-03-variant.jpg',now(), now());

--pk:30
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Marc Spector', 'Moon Knight', 'Protects those who travel at night', 'https://static.wikia.nocookie.net/marveldatabase/images/b/ba/Moon_Knight_Vol_7_3_Stegman_Variant_Textless.jpg',now(), now());

--pk:31
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Jane Foster', 'Valkyrie', 'One of the most notable and powerful female heroes', 'https://staticg.sportskeeda.com/editor/2022/07/03d02-16573756420746-1920.jpg',now(), now());

--pk:32
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Thor Odinson', 'Thor: God of Thunder', 'Champion for Midgard and one of the founding members of the Avengers', 'https://static.wikia.nocookie.net/marveldatabase/images/7/75/Thor_Vol_6_19_Asrar_Variant_Textless.jpg',now(), now());

--pk:33
INSERT INTO api_character   (real_name, alias, details, profile_picture, created_at, updated_at)  VALUES
('Peter Parker', 'Spider-Man', 'Sometimes student, sometimes scientist and sometimes photographer...full-time super hero!', 'https://i.pinimg.com/736x/fa/25/da/fa25da0fe63d0aa66cb9e3f1a031b6d0.jpg',now(), now());

--ComicBooks

--pk:1
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Ironheart: Meant To Fly',1, '1', '11/10/2020','https://i.annihil.us/u/prod/marvel/i/mg/d/00/5f91ea568fcc5/clean.jpg', now(), now());

--pk:2 
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('What If... Miles Morales',5, '2', '06/06/2022','https://i.annihil.us/u/prod/marvel/i/mg/9/30/62b9e06b0f8d0/clean.jpg', now(), now());

--pk:3
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Batman: The Long Halloween',1, '6', '12/01/1996','https://m.media-amazon.com/images/I/51k5K92aBCL.jpg', now(), now());

--pk:4
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Poison Ivy Vol 1',5, '6', '12/01/2022','https://s3.amazonaws.com/comicgeeks/comics/covers/large-5379838.jpg', now(), now());

--pk:5
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Stuff of Nightmares',1, '5', '09/21/2022','https://s3.amazonaws.com/comicgeeks/comics/covers/large-7968435.jpg', now(), now());

--pk:6
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('DC: MECH',1, '3', '07/26/2022','https://cdn.shopify.com/s/files/1/2090/1179/products/202204-0000379817_470x722.jpg', now(), now());

--pk:7
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('DC: MECH',2, '3', '08/23/2022','https://s3.amazonaws.com/comicgeeks/comics/covers/large-4082775.jpg', now(), now());

--pk:8
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('DC Pride 2022',1, '3', '06/07/2022','https://static.wikia.nocookie.net/marvel_dc/images/d/da/DC_Pride_2022_Vol_1_1.jpg', now(), now());

--pk:9
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('DC Pride: Tim Drake Special',1, '3', '06/14/2022','https://batman-news.com/wp-content/uploads/2022/06/image.jpeg', now(), now());

--pk:10
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Harley Quinn 30th Anniversary Special',1, '3', '06/20/2022','https://m.media-amazon.com/images/I/51PMU4gsJkL.jpg', now(), now());

--pk:11
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Poison Ivy Vol.1',1, '3', '06/07/2022','https://s3.amazonaws.com/comicgeeks/comics/covers/large-1357693.jpg', now(), now());

--pk:12
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Poison Ivy Vol.1',3, '3', '08/02/2022','https://s3.amazonaws.com/comicgeeks/comics/covers/large-9329740.jpg', now(), now());

--pk:13
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Poison Ivy Vol.1',2, '3', '07/05/2022','https://s3.amazonaws.com/comicgeeks/comics/covers/large-8531109.jpg', now(), now());

--pk:14
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Poison Ivy Vol.1',4, '3', '09/06/2022','https://s3.amazonaws.com/comicgeeks/comics/covers/large-7928054.jpg', now(), now());

--pk:15
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Poison Ivy Vol.1',6, '3', '11/01/2022','https://s3.amazonaws.com/comicgeeks/comics/covers/large-9447044.jpg', now(), now());

--pk:16
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Ms. Marvel & Moon Knight',1, '1', '8/17/2022','https://i.annihil.us/u/prod/marvel/i/mg/a/10/62f3c67d80f9d/clean.jpg', now(), now());

--pk:17
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Jane Foster & the Mighty Thor',1, '1', '6/8/2022','https://i.annihil.us/u/prod/marvel/i/mg/7/40/62b9e18f83f38/clean.jpg', now(), now());

--pk:18
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Jane Foster & the Mighty Thor',2, '1', '7/6/2022','https://static.wikia.nocookie.net/marveldatabase/images/9/9c/Jane_Foster_%26_the_Mighty_Thor_Vol_1_2.jpg', now(), now());

--pk:19
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Deadly Neighborhood Spider-Man',1, '1', '10/19/2022','https://static.wikia.nocookie.net/marveldatabase/images/2/25/Deadly_Neighborhood_Spider-Man_Vol_1_1.jpg', now(), now());

--pk:20
INSERT INTO api_comicbook   (title,  edition, publisher_id, release_date, cover, created_at, updated_at) VALUES
('Ice Cream Man',32, '4', '09/21/2022','https://cdn.imagecomics.com/assets/i/releases/800230/_b550703809.jpg', now(), now());

--ComicBook Authors

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('1','1');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('2','2');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('3','6');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('4','3');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('5','5');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('6','7');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('7','7');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','8');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','9');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','10');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','11');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','12');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','13');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','14');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','15');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','16');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','17');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','18');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','19');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','20');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('8','21');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('9','22');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('10','23');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('11','3');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('12','3');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('13','3');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('14','3');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('15','3');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('16','24');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('17','25');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('18','25');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('19','26');

INSERT INTO api_comicbook_authors (comicbook_id, author_id) VALUES
('20','4');

--ComicBook Illustrators

INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('1','1');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('1','2');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('2','3');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('3','7');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('4','4');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('5','8');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('6','9');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('7','9');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','10');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','11');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','12');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','13');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','14');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','15');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','16');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','17');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','18');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','19');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','20');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','21');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('8','22');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('9','23');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('10','24');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('11','4');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('12','3');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('13','3');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('14','3');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('15','3');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('16','25');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('17','26');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('18','26');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('19','27');
INSERT INTO api_comicbook_illustrators (comicbook_id, illustrator_id) VALUES
('20','5');

--ComicBook Characters

INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('1','1');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('2','2');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('2','6');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('3','7');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('3','8');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('4','3');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('5','10');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('6','9');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('6','11');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('6','7');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('6','12');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('7','7');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('7','13');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('7','14');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('7','15');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('7','12');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('7','9');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('7','16');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','17');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','18');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','19');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','20');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','21');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','22');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','23');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','24');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','25');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','26');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','27');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','3');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('8','28');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('9','26');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('9','21');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('10','27');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('11','3');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('12','3');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('13','3');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('14','3');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('15','3');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('16','29');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('16','30');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('17','31');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('18','31');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('18','32');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('19','33');
INSERT INTO api_comicbook_characters (comicbook_id, character_id) VALUES
('20','4');


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