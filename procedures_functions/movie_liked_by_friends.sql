CREATE OR REPLACE FUNCTION get_movies_liked_by_friends(p_user_id IN NUMBER) 
RETURN SYS_REFCURSOR
IS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
        SELECT mw.movie_id, COUNT(DISTINCT f.friend_id) AS num_friends_liked
        FROM friendship f
        JOIN movie_liked ml ON f.friend_id = ml.user_id
        JOIN movie_watching mw ON ml.movie_id = mw.movie_id
        WHERE f.user_id = p_user_id
        AND mw.movie_id NOT IN (
            SELECT ml2.movie_id FROM movie_liked ml2 WHERE ml2.user_id = p_user_id
        )
        GROUP BY mw.movie_id
        ORDER BY num_friends_liked DESC;

    RETURN v_cursor;
END;
/

-- CREATE OR REPLACE FUNCTION get_movies_watched_by_friends(p_user_id IN NUMBER) 
-- RETURN SYS_REFCURSOR
-- IS
--     v_cursor SYS_REFCURSOR;
-- BEGIN
--     OPEN v_cursor FOR
--         SELECT mw.movie_id, COUNT(DISTINCT f.friend_id) AS num_friends_watched
--         FROM friendship f
--         JOIN movie_watching mw ON f.friend_id = mw.user_id
--         JOIN movie m ON mw.movie_id = m.movie_id
--         WHERE f.user_id = p_user_id
--         AND (
--             (mw.duration_minutes >= m.duration_minutes * 0.5 AND mw.user_id != p_user_id) 
--             OR mw.movie_id IN (
--                 SELECT ml.movie_id FROM movie_completed ml WHERE ml.user_id = f.friend_id
--             )
--         )
--         AND mw.movie_id NOT IN (
--             SELECT movie_id FROM movie_watching 
--             WHERE user_id = p_user_id AND duration_minutes < m.duration_minutes * 0.5
--             UNION
--             SELECT movie_id FROM movie_completed WHERE user_id = p_user_id
--         )
--         GROUP BY mw.movie_id
--         HAVING COUNT(DISTINCT f.friend_id) = (
--             SELECT COUNT(*) FROM friendship WHERE user_id = p_user_id
--         )
--         ORDER BY num_friends_watched DESC;

--     RETURN v_cursor;
-- END;
-- /

-- CREATE OR REPLACE FUNCTION get_movies_watched_by_friends(p_user_id IN NUMBER) 
-- RETURN SYS_REFCURSOR
-- IS
--     v_cursor SYS_REFCURSOR;
--     v_friend_count NUMBER;
-- BEGIN
--     OPEN v_cursor FOR
--         SELECT mw.movie_id, COUNT(DISTINCT f.friend_id) AS num_friends_watched
--         FROM friendship f
--         INNER JOIN movie_watching mw ON f.friend_id = mw.user_id
--         INNER JOIN movie m ON mw.movie_id = m.movie_id
--         WHERE f.user_id = p_user_id
--         AND (
--             (mw.duration_minutes >= m.duration_minutes * 0.5)
--             OR mw.movie_id IN (
--                 SELECT ml.movie_id FROM movie_completed ml WHERE ml.user_id = f.friend_id
--             )
--         )
--         AND mw.movie_id NOT IN (
--             SELECT movie_id FROM movie_watching 
--             WHERE user_id = p_user_id AND duration_minutes < m.duration_minutes * 0.5
--             UNION
--             SELECT movie_id FROM movie_completed WHERE user_id = p_user_id
--         )
--         GROUP BY mw.movie_id
--         HAVING COUNT(DISTINCT f.friend_id) = (
--             SELECT COUNT(*) FROM friendship WHERE user_id = p_user_id
--         )
--         ORDER BY num_friends_watched DESC;

--     RETURN v_cursor;
-- END;
-- /