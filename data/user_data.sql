-- Sample data for user_info table
INSERT INTO user_info (user_id, name, age) VALUES (11, 'Katherine', 30);
INSERT INTO user_info (user_id, name, age) VALUES (12, 'Liam', 26);
INSERT INTO user_info (user_id, name, age) VALUES (13, 'Mia', 22);
INSERT INTO user_info (user_id, name, age) VALUES (14, 'Noah', 35);
INSERT INTO user_info (user_id, name, age) VALUES (15, 'Olivia', 28);
INSERT INTO user_info (user_id, name, age) VALUES (16, 'Sophia', 32);
INSERT INTO user_info (user_id, name, age) VALUES (17, 'William', 29);
INSERT INTO user_info (user_id, name, age) VALUES (18, 'Ethan', 27);
INSERT INTO user_info (user_id, name, age) VALUES (19, 'Ava', 34);
INSERT INTO user_info (user_id, name, age) VALUES (20, 'Michael', 31);

-- Sample data for friendship table
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (101, 11, 12);
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (102, 11, 14);
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (103, 12, 13);
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (104, 12, 14);
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (105, 13, 15);
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (106, 13, 16);
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (107, 14, 17);
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (108, 14, 18);
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (109, 15, 19);
INSERT INTO friendship (friendship_id, user_id, friend_id) VALUES (110, 15, 20);

-- Sample data for movie_watching table
INSERT INTO movie_watching (movie_watching_id, user_id, movie_id, duration_minutes, last_watched)
VALUES (201, 11, 1, 120, '2023-10-15 20:30:00');
INSERT INTO movie_watching (movie_watching_id, user_id, movie_id, duration_minutes, last_watched)
VALUES (202, 12, 5, 150, '2023-11-20 18:45:00');
INSERT INTO movie_watching (movie_watching_id, user_id, movie_id, duration_minutes, last_watched)
VALUES (203, 13, 9, 110, '2023-09-10 22:15:00');
INSERT INTO movie_watching (movie_watching_id, user_id, movie_id, duration_minutes, last_watched)
VALUES (204, 14, 3, 130, '2023-12-05 21:00:00');
INSERT INTO movie_watching (movie_watching_id, user_id, movie_id, duration_minutes, last_watched)
VALUES (205, 15, 7, 100, '2023-08-18 19:20:00');

-- Sample data for tv_watching table
INSERT INTO tv_watching (tv_watching_id, user_id, tv_id, current_episode, current_season, duration_minutes, last_watched)
VALUES (301, 11, 1, 6, 2, 40, '2023-10-15 22:10:00');
INSERT INTO tv_watching (tv_watching_id, user_id, tv_id, current_episode, current_season, duration_minutes, last_watched)
VALUES (302, 12, 3, 18, 3, 25, '2023-11-20 21:30:00');
INSERT INTO tv_watching (tv_watching_id, user_id, tv_id, current_episode, current_season, duration_minutes, last_watched)
VALUES (303, 13, 6, 3, 1, 50, '2023-09-10 23:45:00');
INSERT INTO tv_watching (tv_watching_id, user_id, tv_id, current_episode, current_season, duration_minutes, last_watched)
VALUES (304, 14, 2, 10, 2, 35, '2023-12-05 22:40:00');
INSERT INTO tv_watching (tv_watching_id, user_id, tv_id, current_episode, current_season, duration_minutes, last_watched)
VALUES (305, 15, 4, 5, 1, 45, '2023-08-18 20:50:00');

-- Sample data for movie_liked table
INSERT INTO movie_liked (movie_liked_id, user_id, movie_id)
VALUES (401, 11, 1);
INSERT INTO movie_liked (movie_liked_id, user_id, movie_id)
VALUES (402, 12, 5);
INSERT INTO movie_liked (movie_liked_id, user_id, movie_id)
VALUES (403, 13, 9);
INSERT INTO movie_liked (movie_liked_id, user_id, movie_id)
VALUES (404, 14, 3);
INSERT INTO movie_liked (movie_liked_id, user_id, movie_id)
VALUES (405, 15, 7);

-- Sample data for tv_liked table
INSERT INTO tv_liked (tv_liked_id, user_id, tv_id)
VALUES (501, 11, 1);
INSERT INTO tv_liked (tv_liked_id, user_id, tv_id)
VALUES (502, 12, 3);
INSERT INTO tv_liked (tv_liked_id, user_id, tv_id)
VALUES (503, 13, 6);
INSERT INTO tv_liked (tv_liked_id, user_id, tv_id)
VALUES (504, 14, 2);
INSERT INTO tv_liked (tv_liked_id, user_id, tv_id)
VALUES (505, 15, 4);
