CREATE OR REPLACE FUNCTION get_most_liked_tv_shows_func(
    p_genre_id IN genre.genre_id%TYPE
) RETURN SYS_REFCURSOR
IS
    genre_cursor SYS_REFCURSOR;
BEGIN
    OPEN genre_cursor FOR
        SELECT ts.tv_id, ts.name, ts.rating
        FROM tv_series ts
        JOIN tv_genre tg ON ts.genre_id = tg.genre_id
        WHERE tg.genre_id = p_genre_id
        AND ts.tv_id IN (
            SELECT tl.tv_id
            FROM tv_liked tl
            WHERE tl.tv_id = ts.tv_id
            GROUP BY tl.tv_id
            HAVING COUNT(tl.user_id) = (
                SELECT MAX(likes_count)
                FROM (
                    SELECT COUNT(tl2.user_id) AS likes_count
                    FROM tv_liked tl2
                    WHERE tl2.tv_id = ts.tv_id
                    GROUP BY tl2.tv_id
                )
            )
        );

    RETURN genre_cursor;
END get_most_liked_tv_shows_func;
/
