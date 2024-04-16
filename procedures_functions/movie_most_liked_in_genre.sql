CREATE OR REPLACE FUNCTION get_most_liked_movies_func(
    p_genre_id IN genre.genre_id%TYPE
) RETURN SYS_REFCURSOR
IS
    genre_cursor SYS_REFCURSOR;
BEGIN
    OPEN genre_cursor FOR
        SELECT m.movie_id, m.name, m.rating
        FROM movie m
        JOIN movie_genre mg ON m.movie_id = mg.movie_id
        WHERE mg.genre_id = p_genre_id
        AND m.movie_id IN (
            SELECT ml.movie_id
            FROM movie_liked ml
            WHERE ml.movie_id = m.movie_id
            GROUP BY ml.movie_id
            HAVING COUNT(ml.user_id) = (
                SELECT MAX(likes_count)
                FROM (
                    SELECT COUNT(ml2.user_id) AS likes_count
                    FROM movie_liked ml2
                    WHERE ml2.movie_id = m.movie_id
                    GROUP BY ml2.movie_id
                )
            )
        );
        
    RETURN genre_cursor;
END get_most_liked_movies_func;
/
