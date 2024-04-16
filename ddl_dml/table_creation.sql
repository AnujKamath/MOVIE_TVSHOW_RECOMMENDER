CREATE TABLE movie (
    movie_id NUMERIC(5) PRIMARY KEY,
    name VARCHAR2(255),
    duration_mins NUMERIC(3),
    rating NUMERIC(2,1),
    age_rating VARCHAR2(3)
);

CREATE TABLE genre (
    genre_id NUMERIC(3) PRIMARY KEY,
    name VARCHAR2(255)
);

CREATE TABLE movie_genre (
    movie_id NUMERIC(5),
    genre_id NUMERIC(3),
    CONSTRAINT pk_mov_genre PRIMARY KEY (movie_id, genre_id),
    CONSTRAINT fk_mov_genre FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE tv_series (
    tv_id NUMERIC PRIMARY KEY,
    name VARCHAR2(255),
    tv_genre_id NUMERIC,
    seasons NUMERIC,
    rating NUMERIC,
    CONSTRAINT chk_tv_rating CHECK (rating >= 0 AND rating <= 10),
    age_rating VARCHAR2(5),
    CONSTRAINT chk_tv_age_rating CHECK (age_rating IN ('G', 'PG', 'PG-13', 'R', 'NC-17'))
);

CREATE TABLE tv_genre (
    tv_genre_id NUMERIC,
    genre_id NUMERIC,
    CONSTRAINT fk_genre_comb_genre FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);


-- create table movie (
--     movie_id numeric(5) primary key,
--     name varchar2(255),
--     duration_mins numeric(3),
--     rating numeric(2,1),
--     age_rating varchar2(3),
-- );

-- CREATE TABLE genre (
--     genre_id numeric(3) PRIMARY KEY,
--     name VARCHAR2(255)
-- );

-- create table movie_genre (
--     movie_id numeric(5),
--     genre_id numeric(3),
--     CONSTRAINT pk_mov_genre PRIMARY KEY (movie_id, genre_id),
--     CONSTRAINT fk_mov_genre FOREIGN KEY (genre_id) references genre(genre_id)
-- );

-- CREATE TABLE tv_series (
--     tv_id NUMERIC CONSTRAINT pk_tv PRIMARY KEY,
--     name VARCHAR2(255),
--     tv_genre_id NUMERIC,
--     seasons NUMERIC,
--     rating NUMERIC CONSTRAINT chk_tv_rating CHECK (rating >= 0 AND rating <= 10),
--     age_rating VARCHAR2(5) CONSTRAINT chk_tv_age_rating CHECK (age_rating IN ('G', 'PG', 'PG-13', 'R', 'NC-17'))
-- );

-- CREATE TABLE tv_genre (
--     tv_genre_id NUMERIC,
--     genre_id NUMERIC CONSTRAINT fk_genre_comb_genre REFERENCES genre(genre_id)
-- );