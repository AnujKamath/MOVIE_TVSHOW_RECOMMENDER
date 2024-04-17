-- genre_table fillings
INSERT INTO genre VALUES (1, 'Action');
INSERT INTO genre VALUES (2, 'Adventure');
INSERT INTO genre VALUES (3, 'Comedy');
INSERT INTO genre VALUES (4, 'Drama');
INSERT INTO genre VALUES (5, 'Fantasy');
INSERT INTO genre VALUES (6, 'Horror');
INSERT INTO genre VALUES (7, 'Mystery');
INSERT INTO genre VALUES (8, 'Science Fiction');
INSERT INTO genre VALUES (9, 'Thriller');
INSERT INTO genre VALUES (10, 'Crime');
INSERT INTO genre VALUES (11, 'Animation');
INSERT INTO genre VALUES (12, 'Family');
INSERT INTO genre VALUES (13, 'Romance');
INSERT INTO genre VALUES (14, 'Musical');
INSERT INTO genre VALUES (15, 'Documentary');
INSERT INTO genre VALUES (16, 'War');
INSERT INTO genre VALUES (17, 'Biography');
INSERT INTO genre VALUES (18, 'History');
INSERT INTO genre VALUES (19, 'Sports');
INSERT INTO genre VALUES (20, 'Superhero');
INSERT INTO genre VALUES (21, 'Music');
INSERT INTO genre VALUES (22, 'Reality TV');
INSERT INTO genre VALUES (23, 'Game Show');
INSERT INTO genre VALUES (24, 'Talk Show');
INSERT INTO genre VALUES (25, 'Fantasy/Science Fiction');


-- tv_series fillings

-- Action TV series
-- Insert TV series and their genre_comb_id values
INSERT INTO tv_series VALUES (1, 'Stranger Things', 1, 3, 8.8, 'PG-13');
INSERT INTO tv_series VALUES (2, 'Breaking Bad', 2, 2, 9.5, 'R');
INSERT INTO tv_series VALUES (3, 'Friends', 3, 3, 8.9, 'PG-13');
INSERT INTO tv_series VALUES (4, 'Game of Thrones', 4, 3, 9.3, 'R');
INSERT INTO tv_series VALUES (5, 'The Crown', 5, 2, 8.7, 'PG-13');
INSERT INTO tv_series VALUES (6, 'Black Mirror', 6, 2, 8.8, 'R');
INSERT INTO tv_series VALUES (7, 'The Office', 7, 2, 8.9, 'PG-13');
INSERT INTO tv_series VALUES (8, 'Sherlock', 8, 3, 9.1, 'PG-13');
INSERT INTO tv_series VALUES (9, 'Narcos', 9, 2, 8.8, 'R');
INSERT INTO tv_series VALUES (10, 'The Mandalorian', 10, 1, 8.8, 'PG-13');

-- Inserting tv_genre data for each TV series
INSERT INTO tv_genre VALUES (1, 4);
INSERT INTO tv_genre VALUES (1, 6);
INSERT INTO tv_genre VALUES (1, 19);

INSERT INTO tv_genre VALUES (2, 4);
INSERT INTO tv_genre VALUES (2, 9);

INSERT INTO tv_genre VALUES (3, 3);
INSERT INTO tv_genre VALUES (3, 12);
INSERT INTO tv_genre VALUES (3, 13);

INSERT INTO tv_genre VALUES (4, 2);
INSERT INTO tv_genre VALUES (4, 4);
INSERT INTO tv_genre VALUES (4, 7);

INSERT INTO tv_genre VALUES (5, 3);
INSERT INTO tv_genre VALUES (5, 4);
INSERT INTO tv_genre VALUES (5, 18);

INSERT INTO tv_genre VALUES (6, 4);
INSERT INTO tv_genre VALUES (6, 5);
INSERT INTO tv_genre VALUES (6, 7);

INSERT INTO tv_genre VALUES (7, 3);
INSERT INTO tv_genre VALUES (7, 4);
INSERT INTO tv_genre VALUES (7, 22);

INSERT INTO tv_genre VALUES (8, 4);
INSERT INTO tv_genre VALUES (8, 8);
INSERT INTO tv_genre VALUES (8, 10);

INSERT INTO tv_genre VALUES (9, 1);
INSERT INTO tv_genre VALUES (9, 4);
INSERT INTO tv_genre VALUES (9, 6);

INSERT INTO tv_genre VALUES (10, 1);
INSERT INTO tv_genre VALUES (10, 4);
INSERT INTO tv_genre VALUES (10, 20);

-- Stranger things
INSERT INTO tv_episode VALUES (1, 1, 1, 'The Vanishing of Will Byers');
INSERT INTO tv_episode VALUES (1, 1, 2, 'The Weirdo on Maple Street');
INSERT INTO tv_episode VALUES (1, 1, 3, 'Holly, Jolly');
INSERT INTO tv_episode VALUES (1, 1, 4, 'The Body');
INSERT INTO tv_episode VALUES (1, 1, 5, 'The Flea and the Acrobat');
INSERT INTO tv_episode VALUES (1, 1, 6, 'The Monster');
INSERT INTO tv_episode VALUES (1, 1, 7, 'The Bathtub');
INSERT INTO tv_episode VALUES (1, 1, 8, 'The Upside Down');
INSERT INTO tv_episode VALUES (1, 2, 1, 'MADMAX');
INSERT INTO tv_episode VALUES (1, 2, 2, 'Trick or Treat, Freak');
INSERT INTO tv_episode VALUES (1, 2, 3, 'The Pollywog');
INSERT INTO tv_episode VALUES (1, 2, 4, 'Will the Wise');
INSERT INTO tv_episode VALUES (1, 2, 5, 'Dig Dug');
INSERT INTO tv_episode VALUES (1, 2, 6, 'The Spy');
INSERT INTO tv_episode VALUES (1, 2, 7, 'The Lost Sister');
INSERT INTO tv_episode VALUES (1, 2, 8, 'The Mind Flayer');
INSERT INTO tv_episode VALUES (1, 2, 9, 'The Gate');
INSERT INTO tv_episode VALUES (1, 3, 1, 'Suzie, Do You Copy?');
INSERT INTO tv_episode VALUES (1, 3, 2, 'The Mall Rats');
INSERT INTO tv_episode VALUES (1, 3, 3, 'The Case of the Missing Lifeguard');
INSERT INTO tv_episode VALUES (1, 3, 4, 'The Sauna Test');
INSERT INTO tv_episode VALUES (1, 3, 5, 'The Flayed');
INSERT INTO tv_episode VALUES (1, 3, 6, 'E Pluribus Unum');
INSERT INTO tv_episode VALUES (1, 3, 7, 'The Bite');
INSERT INTO tv_episode VALUES (1, 3, 8, 'The Battle of Starcourt');


INSERT INTO tv_episode VALUES (2, 1, 1, 'Pilot');
INSERT INTO tv_episode VALUES (2, 1, 2, 'Cat''s in the Bag...');
INSERT INTO tv_episode VALUES (2, 1, 3, '...And the Bag''s in the River');
INSERT INTO tv_episode VALUES (2, 1, 4, 'Cancer Man');
INSERT INTO tv_episode VALUES (2, 1, 5, 'Gray Matter');
INSERT INTO tv_episode VALUES (2, 2, 1, 'Seven Thirty-Seven');
INSERT INTO tv_episode VALUES (2, 2, 2, 'Grilled');
INSERT INTO tv_episode VALUES (2, 2, 3, 'Bit by a Dead Bee');
INSERT INTO tv_episode VALUES (2, 2, 4, 'Down');
INSERT INTO tv_episode VALUES (2, 2, 5, 'Breakage');

INSERT INTO tv_episode VALUES (3, 1, 1, 'The One Where Monica Gets a Roommate');
INSERT INTO tv_episode VALUES (3, 1, 2, 'The One with the Sonogram at the End');
INSERT INTO tv_episode VALUES (3, 1, 3, 'The One with the Thumb');
INSERT INTO tv_episode VALUES (3, 1, 4, 'The One with George Stephanopoulos');
INSERT INTO tv_episode VALUES (3, 1, 5, 'The One with the East German Laundry Detergent');
INSERT INTO tv_episode VALUES (3, 1, 6, 'The One with the Butt');
INSERT INTO tv_episode VALUES (3, 1, 7, 'The One with the Blackout');
INSERT INTO tv_episode VALUES (3, 1, 8, 'The One Where Nana Dies Twice');
INSERT INTO tv_episode VALUES (3, 1, 9, 'The One Where Underdog Gets Away');
INSERT INTO tv_episode VALUES (3, 1, 10, 'The One with the Monkey');
INSERT INTO tv_episode VALUES (3, 1, 11, 'The One with Mrs. Bing');
INSERT INTO tv_episode VALUES (3, 1, 12, 'The One with the Dozen Lasagnas');
INSERT INTO tv_episode VALUES (3, 1, 13, 'The One with the Boobies');
INSERT INTO tv_episode VALUES (3, 1, 14, 'The One with the Candy Hearts');
INSERT INTO tv_episode VALUES (3, 1, 15, 'The One with the Stoned Guy');
INSERT INTO tv_episode VALUES (3, 1, 16, 'The One with Two Parts: Part 1');
INSERT INTO tv_episode VALUES (3, 1, 17, 'The One with Two Parts: Part 2');
INSERT INTO tv_episode VALUES (3, 1, 18, 'The One with All the Poker');
INSERT INTO tv_episode VALUES (3, 1, 19, 'The One Where the Monkey Gets Away');
INSERT INTO tv_episode VALUES (3, 1, 20, 'The One with the Evil Orthodontist');
INSERT INTO tv_episode VALUES (3, 1, 21, 'The One with the Fake Monica');
INSERT INTO tv_episode VALUES (3, 1, 22, 'The One with the Ick Factor');
INSERT INTO tv_episode VALUES (3, 1, 23, 'The One with the Birth');
INSERT INTO tv_episode VALUES (3, 1, 24, 'The One Where Rachel Finds Out');
INSERT INTO tv_episode VALUES (3, 2, 1, 'The One with Ross''s New Girlfriend');
INSERT INTO tv_episode VALUES (3, 2, 2, 'The One with the Breast Milk');
INSERT INTO tv_episode VALUES (3, 2, 3, 'The One Where Heckles Dies');
INSERT INTO tv_episode VALUES (3, 2, 4, 'The One with Phoebe''s Husband');
INSERT INTO tv_episode VALUES (3, 2, 5, 'The One with Five Steaks and an Eggplant');
INSERT INTO tv_episode VALUES (3, 2, 6, 'The One with the Baby on the Bus');
INSERT INTO tv_episode VALUES (3, 2, 7, 'The One Where Ross Finds Out');
INSERT INTO tv_episode VALUES (3, 2, 8, 'The One with the List');
INSERT INTO tv_episode VALUES (3, 2, 9, 'The One with Phoebe''s Dad');
INSERT INTO tv_episode VALUES (3, 2, 10, 'The One with Russ');
INSERT INTO tv_episode VALUES (3, 2, 11, 'The One with the Lesbian Wedding');
INSERT INTO tv_episode VALUES (3, 2, 12, 'The One After the Superbowl: Part 1');
INSERT INTO tv_episode VALUES (3, 2, 13, 'The One After the Superbowl: Part 2');
INSERT INTO tv_episode VALUES (3, 2, 14, 'The One with the Prom Video');
INSERT INTO tv_episode VALUES (3, 2, 15, 'The One Where Ross and Rachel... You Know');
INSERT INTO tv_episode VALUES (3, 3, 1, 'The One with the Princess Leia Fantasy');
INSERT INTO tv_episode VALUES (3, 3, 2, 'The One Where No One''s Ready');
INSERT INTO tv_episode VALUES (3, 3, 3, 'The One with the Jam');
INSERT INTO tv_episode VALUES (3, 3, 4, 'The One with the Metaphorical Tunnel');
INSERT INTO tv_episode VALUES (3, 3, 5, 'The One with Frank Jr.');
INSERT INTO tv_episode VALUES (3, 3, 6, 'The One with the Flashback');
INSERT INTO tv_episode VALUES (3, 3, 7, 'The One with the Race Car Bed');
INSERT INTO tv_episode VALUES (3, 3, 8, 'The One with the Giant Poking Device');
INSERT INTO tv_episode VALUES (3, 3, 9, 'The One with the Football');
INSERT INTO tv_episode VALUES (3, 3, 10, 'The One Where Rachel Quits');
INSERT INTO tv_episode VALUES (3, 3, 11, 'The One Where Chandler Can''t Remember Which Sister');
INSERT INTO tv_episode VALUES (3, 3, 12, 'The One with All the Jealousy');
INSERT INTO tv_episode VALUES (3, 3, 13, 'The One Where Monica and Richard Are Just Friends');
INSERT INTO tv_episode VALUES (3, 3, 14, 'The One with Phoebe''s Ex-Partner');
INSERT INTO tv_episode VALUES (3, 3, 15, 'The One Where Ross and Rachel Take a Break');


INSERT INTO tv_episode VALUES (4, 1, 1, 'Winter Is Coming');
INSERT INTO tv_episode VALUES (4, 1, 2, 'The Kingsroad');
INSERT INTO tv_episode VALUES (4, 1, 3, 'Lord Snow');
INSERT INTO tv_episode VALUES (4, 1, 4, 'Cripples, Bastards, and Broken Things');
INSERT INTO tv_episode VALUES (4, 1, 5, 'The Wolf and the Lion');
INSERT INTO tv_episode VALUES (4, 1, 6, 'A Golden Crown');
INSERT INTO tv_episode VALUES (4, 1, 7, 'You Win or You Die');
INSERT INTO tv_episode VALUES (4, 1, 8, 'The Pointy End');
INSERT INTO tv_episode VALUES (4, 1, 9, 'Baelor');
INSERT INTO tv_episode VALUES ( 4, 1, 10, 'Fire and Blood');
INSERT INTO tv_episode VALUES ( 4, 2, 1, 'The North Remembers');
INSERT INTO tv_episode VALUES ( 4, 2, 2, 'The Night Lands');
INSERT INTO tv_episode VALUES ( 4, 2, 3, 'What Is Dead May Never Die');
INSERT INTO tv_episode VALUES ( 4, 2, 4, 'Garden of Bones');
INSERT INTO tv_episode VALUES ( 4, 2, 5, 'The Ghost of Harrenhal');
INSERT INTO tv_episode VALUES ( 4, 2, 6, 'The Old Gods and the New');
INSERT INTO tv_episode VALUES ( 4, 2, 7, 'A Man Without Honor');
INSERT INTO tv_episode VALUES ( 4, 3, 1, 'Valar Dohaeris');
INSERT INTO tv_episode VALUES ( 4, 3, 2, 'Dark Wings, Dark Words');
INSERT INTO tv_episode VALUES ( 4, 3, 3, 'Walk of Punishment');
INSERT INTO tv_episode VALUES ( 4, 3, 4, 'And Now His Watch Is Ended');
INSERT INTO tv_episode VALUES ( 4, 3, 5, 'Kissed by Fire');
INSERT INTO tv_episode VALUES ( 4, 3, 6, 'The Climb');
INSERT INTO tv_episode VALUES ( 4, 3, 7, 'The Bear and the Maiden Fair');
-- Season 1 episodes
INSERT INTO tv_episode VALUES ( 5, 1, 1, 'Wolferton Splash');
INSERT INTO tv_episode VALUES ( 5, 1, 2, 'Hyde Park Corner');
INSERT INTO tv_episode VALUES ( 5, 1, 3, 'Windsor');
INSERT INTO tv_episode VALUES ( 5, 1, 4, 'Act of God');
INSERT INTO tv_episode VALUES ( 5, 1, 5, 'Smoke and Mirrors');
INSERT INTO tv_episode VALUES ( 5, 1, 6, 'Gelignite');
INSERT INTO tv_episode VALUES ( 5, 1, 7, 'Scientia Potentia Est');
INSERT INTO tv_episode VALUES ( 5, 1, 8, 'Pride and Joy');
INSERT INTO tv_episode VALUES ( 5, 1, 9, 'Assassins');
INSERT INTO tv_episode VALUES ( 5, 1, 10, 'Gloriana');
-- Season 2 episodes
INSERT INTO tv_episode VALUES ( 5, 2, 1, 'Misadventure');
INSERT INTO tv_episode VALUES ( 5, 2, 2, 'A Company of Men');
INSERT INTO tv_episode VALUES ( 5, 2, 3, 'Lisbon');
INSERT INTO tv_episode VALUES ( 5, 2, 4, 'Beryl');
INSERT INTO tv_episode VALUES ( 5, 2, 5, 'Marionettes');
INSERT INTO tv_episode VALUES ( 5, 2, 6, 'Vergangenheit');
INSERT INTO tv_episode VALUES ( 5, 2, 7, 'Matrimonium');
INSERT INTO tv_episode VALUES ( 5, 2, 8, 'Dear Mrs. Kennedy');


-- Season 1 episodes
INSERT INTO tv_episode VALUES ( 6, 1, 1, 'The National Anthem');
INSERT INTO tv_episode VALUES ( 6, 1, 2, 'Fifteen Million Merits');
INSERT INTO tv_episode VALUES ( 6, 1, 3, 'The Entire History of You');
INSERT INTO tv_episode VALUES ( 6, 1, 4, 'Be Right Back');
INSERT INTO tv_episode VALUES ( 6, 1, 5, 'White Bear');
INSERT INTO tv_episode VALUES ( 6, 1, 6, 'The Waldo Moment');
INSERT INTO tv_episode VALUES ( 6, 1, 7, 'White Christmas');

-- Season 2 episodes
INSERT INTO tv_episode VALUES ( 6, 2, 1, 'Be Right Back');
INSERT INTO tv_episode VALUES ( 6, 2, 2, 'White Bear');
INSERT INTO tv_episode VALUES ( 6, 2, 3, 'The Waldo Moment');
INSERT INTO tv_episode VALUES ( 6, 2, 4, 'White Christmas');
INSERT INTO tv_episode VALUES ( 6, 2, 5, 'Nosedive');
INSERT INTO tv_episode VALUES ( 6, 2, 6, 'Playtest');
INSERT INTO tv_episode VALUES ( 6, 2, 7, 'Shut Up and Dance');

-- Season 1 episodes
INSERT INTO tv_episode VALUES ( 7, 1, 1, 'Pilot');
INSERT INTO tv_episode VALUES ( 7, 1, 2, 'Diversity Day');
INSERT INTO tv_episode VALUES ( 7, 1, 3, 'Health Care');
INSERT INTO tv_episode VALUES ( 7, 1, 4, 'The Alliance');
INSERT INTO tv_episode VALUES ( 7, 1, 5, 'Basketball');
INSERT INTO tv_episode VALUES ( 7, 1, 6, 'Hot Girl');
-- Season 2 episodes
INSERT INTO tv_episode VALUES ( 7, 2, 1, 'The Dundies');
INSERT INTO tv_episode VALUES ( 7, 2, 2, 'Sexual Harassment');
INSERT INTO tv_episode VALUES ( 7, 2, 3, 'Office Olympics');
INSERT INTO tv_episode VALUES ( 7, 2, 4, 'The Fire');
INSERT INTO tv_episode VALUES ( 7, 2, 5, 'Halloween');
INSERT INTO tv_episode VALUES ( 7, 2, 6, 'The Fight');
INSERT INTO tv_episode VALUES ( 7, 2, 7, 'The Client');
INSERT INTO tv_episode VALUES ( 7, 2, 8, 'Performance Review');
INSERT INTO tv_episode VALUES ( 7, 2, 9, 'E-Mail Surveillance');


-- Season 1 episodes
INSERT INTO tv_episode VALUES ( 8, 1, 1, 'A Study in Pink');
INSERT INTO tv_episode VALUES ( 8, 1, 2, 'The Blind Banker');
INSERT INTO tv_episode VALUES ( 8, 1, 3, 'The Great Game');
INSERT INTO tv_episode VALUES ( 8, 1, 4, 'A Study in Pink (Unaired Pilot)');
INSERT INTO tv_episode VALUES ( 8, 1, 5, 'A Study in Pink (Pilot Commentary)');
INSERT INTO tv_episode VALUES ( 8, 1, 6, 'A Study in Pink (BBC Aftershow)');
-- Season 2 episodes
INSERT INTO tv_episode VALUES ( 8, 2, 1, 'A Scandal in Belgravia');
INSERT INTO tv_episode VALUES ( 8, 2, 2, 'The Hounds of Baskerville');
INSERT INTO tv_episode VALUES ( 8, 2, 3, 'The Reichenbach Fall');
INSERT INTO tv_episode VALUES ( 8, 2, 4, 'A Scandal in Belgravia (Unaired Pilot)');
INSERT INTO tv_episode VALUES ( 8, 2, 5, 'A Scandal in Belgravia (Pilot Commentary)');
INSERT INTO tv_episode VALUES ( 8, 2, 6, 'A Scandal in Belgravia (BBC Aftershow)');
INSERT INTO tv_episode VALUES ( 8, 2, 7, 'The Hounds of Baskerville (Pilot Commentary)');
INSERT INTO tv_episode VALUES ( 8, 2, 8, 'The Hounds of Baskerville (BBC Aftershow)');
-- Season 3 episodes
INSERT INTO tv_episode VALUES ( 8, 3, 1, 'The Empty Hearse');
INSERT INTO tv_episode VALUES ( 8, 3, 2, 'The Sign of Three');
INSERT INTO tv_episode VALUES ( 8, 3, 3, 'His Last Vow');
INSERT INTO tv_episode VALUES ( 8, 3, 4, 'The Empty Hearse (Pilot Commentary)');
INSERT INTO tv_episode VALUES ( 8, 3, 5, 'The Empty Hearse (BBC Aftershow)');
-- Narcos episodes
INSERT INTO tv_episode VALUES ( 9, 1, 1, 'Descenso');
INSERT INTO tv_episode VALUES ( 9, 1, 2, 'The Sword of Simón Bolívar');
INSERT INTO tv_episode VALUES ( 9, 1, 3, 'The Men of Always');
INSERT INTO tv_episode VALUES ( 9, 1, 4, 'The Palace in Flames');
INSERT INTO tv_episode VALUES ( 9, 1, 5, 'There Will Be a Future');
INSERT INTO tv_episode VALUES ( 9, 1, 6, 'Explosivos');
INSERT INTO tv_episode VALUES ( 9, 1, 7, 'You Will Cry Tears of Blood');
INSERT INTO tv_episode VALUES ( 9, 1, 8, 'La Gran Mentira');
INSERT INTO tv_episode VALUES ( 9, 1, 9, 'La Catedral');
INSERT INTO tv_episode VALUES ( 9, 1, 10, 'Despegue');
INSERT INTO tv_episode VALUES ( 9, 1, 11, 'Free at Last');
INSERT INTO tv_episode VALUES ( 9, 1, 12, 'Going Back to Cali');
INSERT INTO tv_episode VALUES ( 9, 2, 1, 'Free at Last');
INSERT INTO tv_episode VALUES ( 9, 2, 2, 'Cambalache');
INSERT INTO tv_episode VALUES ( 9, 2, 3, 'Our Man in Madrid');
INSERT INTO tv_episode VALUES ( 9, 2, 4, 'The Good, the Bad, and the Dead');
INSERT INTO tv_episode VALUES ( 9, 2, 5, 'The Enemies of My Enemy');
INSERT INTO tv_episode VALUES ( 9, 2, 6, 'Los Pepes');
INSERT INTO tv_episode VALUES ( 9, 2, 7, 'Deutschland 93');
INSERT INTO tv_episode VALUES ( 9, 2, 8, 'Exit El Patrón');

-- The Mandalorian episodes
INSERT INTO tv_episode VALUES ( 10, 1, 1, 'The Mandalorian');
INSERT INTO tv_episode VALUES ( 10, 1, 2, 'The Child');
INSERT INTO tv_episode VALUES ( 10, 1, 3, 'The Sin');
INSERT INTO tv_episode VALUES ( 10, 1, 4, 'Sanctuary');
INSERT INTO tv_episode VALUES ( 10, 1, 5, 'The Gunslinger');
INSERT INTO tv_episode VALUES ( 10, 1, 6, 'The Prisoner');
INSERT INTO tv_episode VALUES ( 10, 1, 7, 'The Reckoning');
INSERT INTO tv_episode VALUES ( 10, 1, 8, 'Redemption');

INSERT INTO user_info VALUES (1, 'John Doe', 30);
INSERT INTO user_info VALUES (2, 'Alice Smith', 25);
INSERT INTO user_info VALUES (3, 'Michael Johnson', 42);
INSERT INTO user_info VALUES (4, 'Emily Brown', 28);
INSERT INTO user_info VALUES (5, 'David Lee', 35);
INSERT INTO user_info VALUES (6, 'Sarah Johnson', 12);
INSERT INTO user_info VALUES (7, 'Jacob Martinez', 17);
INSERT INTO user_info VALUES (8, 'Anuj Kamath', 19);
INSERT INTO user_info VALUES (9, 'Balaji Ramadhurai', 19);

-- Creating and inserting friendships
-- John Doe's friends
INSERT INTO friendship VALUES (1, 3);
INSERT INTO friendship VALUES (1, 4);
-- Alice Smith's friends
INSERT INTO friendship VALUES (2, 1);
INSERT INTO friendship VALUES (2, 3);
INSERT INTO friendship VALUES (2, 5);
-- Michael Johnson's friends
INSERT INTO friendship VALUES (3, 2);
INSERT INTO friendship VALUES (3, 4);
INSERT INTO friendship VALUES (3, 6);
-- Emily Brown's friends
INSERT INTO friendship VALUES (4, 1);
INSERT INTO friendship VALUES ( 4, 2);
INSERT INTO friendship VALUES ( 4, 5);
INSERT INTO friendship VALUES ( 4, 7);
-- David Lee's frie
INSERT INTO friendship VALUES ( 5, 2);
INSERT INTO friendship VALUES ( 5, 4);
INSERT INTO friendship VALUES ( 5, 6);
INSERT INTO friendship VALUES ( 5, 7);
-- Sarah Johnson's frie
INSERT INTO friendship VALUES ( 6, 1);
INSERT INTO friendship VALUES ( 6, 4);
-- Jacob Martinez's frie
INSERT INTO friendship VALUES ( 7, 3);
INSERT INTO friendship VALUES ( 7, 5);
INSERT INTO friendship VALUES ( 7, 6);
INSERT INTO friendship VALUES ( 7, 8);
-- Anuj Kamath's frie
INSERT INTO friendship VALUES ( 8, 2);
INSERT INTO friendship VALUES ( 8, 3);
INSERT INTO friendship VALUES ( 8, 7);
INSERT INTO friendship VALUES ( 8, 9);
-- Balaji Ramadhurai's frie
INSERT INTO friendship VALUES ( 9, 1);
INSERT INTO friendship VALUES ( 9, 3);
INSERT INTO friendship VALUES ( 9, 6);
INSERT INTO friendship VALUES ( 9, 8);

-- Adding random liked TV shows for each user
-- John Doe's liked TV shows
INSERT INTO tv_liked VALUES ( 1, 1);  
INSERT INTO tv_liked VALUES ( 1, 2);  
INSERT INTO tv_liked VALUES ( 1, 3); 
-- Alice Smith's liked TV sho
INSERT INTO tv_liked VALUES ( 2, 4);  
INSERT INTO tv_liked VALUES ( 2, 5);  
-- Michael Johnson's liked TVhows
INSERT INTO tv_liked VALUES ( 3, 6);  
INSERT INTO tv_liked VALUES ( 3, 7);  
-- Emily Brown's liked TV sho
INSERT INTO tv_liked VALUES ( 4, 5);  
INSERT INTO tv_liked VALUES ( 4, 8);  
INSERT INTO tv_liked VALUES ( 4, 10);
-- David Lee's liked TV sh
INSERT INTO tv_liked VALUES ( 5, 1); 
INSERT INTO tv_liked VALUES ( 5, 9);
-- Sarah Johnson's liked TV ss
INSERT INTO tv_liked VALUES ( 6, 1); 
INSERT INTO tv_liked VALUES ( 6, 2); 
INSERT INTO tv_liked VALUES ( 6, 4); 
-- Jacob Martinez's liked TV ws
INSERT INTO tv_liked VALUES ( 7, 3); 
INSERT INTO tv_liked VALUES ( 7, 5); n
-- Anuj Kamath's liked TV sh
INSERT INTO tv_liked VALUES ( 8, 2); 
INSERT INTO tv_liked VALUES ( 8, 9);
-- Balaji Ramadhurai's liked shows
INSERT INTO tv_liked VALUES ( 9, 6); 
INSERT INTO tv_liked VALUES ( 9, 7);


-- Inserting data into tv_watching table
-- John Doe
INSERT INTO tv_watching VALUES ( 1, 1, 3, 1, CURRENT_TIMESTAMP);  
-- Alice Smi
INSERT INTO tv_watching VALUES ( 2, 4, 1, 1, CURRENT_TIMESTAMP);  
-- Michael Johns
INSERT INTO tv_watching VALUES ( 3, 6, 5, 1, CURRENT_TIMESTAMP);
-- Emily Bro
INSERT INTO tv_watching VALUES ( 4, 5, 4, 1, CURRENT_TIMESTAMP); 
-- David L
INSERT INTO tv_watching VALUES ( 5, 1, 2, 2, CURRENT_TIMESTAMP);  
-- Sarah Johns
INSERT INTO tv_watching VALUES ( 6, 1, 1, 1, CURRENT_TIMESTAMP);  
-- Jacob Martin
INSERT INTO tv_watching VALUES ( 7, 3, 1, 1, CURRENT_TIMESTAMP);  
-- Anuj Kama
INSERT INTO tv_watching VALUES ( 8, 9, 1, 2, CURRENT_TIMESTAMP); 
-- Balaji Ramadhur
INSERT INTO tv_watching VALUES ( 9, 6, 2, 3, CURRENT_TIMESTAMP);
