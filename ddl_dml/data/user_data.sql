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
