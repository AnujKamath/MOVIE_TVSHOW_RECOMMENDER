CREATE TABLE movie (
    movie_id NUMERIC CONSTRAINT pk_movie PRIMARY KEY,
    name VARCHAR2(255),
    genre_id NUMERIC CONSTRAINT fk_movie_genre REFERENCES genre(genre_id),
    duration_minutes NUMERIC CONSTRAINT chk_movie_duration CHECK (duration_minutes > 0),
    rating NUMERIC CONSTRAINT chk_movie_rating CHECK (rating >= 0 AND rating <= 10),
    age_rating VARCHAR2(5) CONSTRAINT chk_movie_age_rating CHECK (age_rating IN ('G', 'PG', 'PG-13', 'R', 'NC-17'))
);

CREATE TABLE tv_series (
    tv_id NUMERIC CONSTRAINT pk_tv PRIMARY KEY,
    name VARCHAR2(255),
    genre_id NUMERIC CONSTRAINT fk_tv_genre REFERENCES genre(genre_id),
    seasons NUMERIC CONSTRAINT chk_tv_seasons CHECK (seasons > 0),
    rating NUMERIC CONSTRAINT chk_tv_rating CHECK (rating >= 0 AND rating <= 10),
    age_rating VARCHAR2(5) CONSTRAINT chk_tv_age_rating CHECK (age_rating IN ('G', 'PG', 'PG-13', 'R', 'NC-17'))
);

CREATE TABLE tv_episode (
    episode_id NUMERIC CONSTRAINT pk_tv_episode PRIMARY KEY,
    tv_id NUMERIC,
    season_num NUMERIC,
    episode_num NUMERIC,
    ep_name VARCHAR2(255),
    CONSTRAINT fk_tv_episode_tv FOREIGN KEY (tv_id) REFERENCES tv_series(tv_id)
);

CREATE TABLE user (
    user_id NUMERIC CONSTRAINT pk_user PRIMARY KEY,
    name VARCHAR2(255),
    age NUMERIC CONSTRAINT chk_user_age CHECK (age >= 0)
);

CREATE TABLE friendship (
    friendship_id NUMERIC CONSTRAINT pk_friendship PRIMARY KEY,
    user_id NUMERIC,
    friend_id NUMERIC,
    CONSTRAINT fk_friendship_user FOREIGN KEY (user_id) REFERENCES user(user_id),
    CONSTRAINT fk_friendship_friend FOREIGN KEY (friend_id) REFERENCES user(user_id)
);

CREATE TABLE movie_watching (
    movie_watching_id NUMERIC CONSTRAINT pk_movie_watching PRIMARY KEY,
    user_id NUMERIC,
    movie_id NUMERIC,
    duration_minutes NUMERIC CONSTRAINT chk_movie_watching_duration CHECK (duration_minutes >= 0),
    last_watched TIMESTAMP,
    CONSTRAINT fk_movie_watching_user FOREIGN KEY (user_id) REFERENCES user(user_id),
    CONSTRAINT fk_movie_watching_movie FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE tv_watching (
    tv_watching_id NUMERIC CONSTRAINT pk_tv_watching PRIMARY KEY,
    user_id NUMERIC,
    tv_id NUMERIC,
    current_episode NUMERIC CONSTRAINT chk_tv_watching_current_episode CHECK (current_episode > 0),
    current_season NUMERIC CONSTRAINT chk_tv_watching_current_season CHECK (current_season > 0),
    duration_minutes NUMERIC CONSTRAINT chk_tv_watching_duration CHECK (duration_minutes >= 0),
    last_watched TIMESTAMP,
    CONSTRAINT fk_tv_watching_user FOREIGN KEY (user_id) REFERENCES user(user_id),
    CONSTRAINT fk_tv_watching_tv FOREIGN KEY (tv_id) REFERENCES tv_series(tv_id)
);

CREATE TABLE movie_liked (
    movie_liked_id NUMERIC CONSTRAINT pk_movie_liked PRIMARY KEY,
    user_id NUMERIC,
    movie_id NUMERIC,
    CONSTRAINT fk_movie_liked_user FOREIGN KEY (user_id) REFERENCES user(user_id),
    CONSTRAINT fk_movie_liked_movie FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE tv_liked (
    tv_liked_id NUMERIC CONSTRAINT pk_tv_liked PRIMARY KEY,
    user_id NUMERIC,
    tv_id NUMERIC,
    CONSTRAINT fk_tv_liked_user FOREIGN KEY (user_id) REFERENCES user(user_id),
    CONSTRAINT fk_tv_liked_tv FOREIGN KEY (tv_id) REFERENCES tv_series(tv_id)
);

CREATE TABLE movie_genre (
    movie_id NUMERIC(5),
    genre_id NUMERIC(3),
    CONSTRAINT pk_mov_genre PRIMARY KEY (movie_id, genre_id),
    CONSTRAINT fk_mov_genre FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE tv_genre (
    tv_genre_id NUMERIC,
    genre_id NUMERIC,
    CONSTRAINT fk_genre_comb_genre FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);