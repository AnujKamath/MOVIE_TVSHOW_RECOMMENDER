CREATE OR REPLACE FUNCTION get_tv_shows_liked_by_friends(p_user_id IN NUMBER) 
RETURN SYS_REFCURSOR
IS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
        SELECT tw.tv_id, COUNT(DISTINCT f.friend_id) AS num_friends_liked
        FROM friendship f
        JOIN tv_liked tl ON f.friend_id = tl.user_id
        JOIN tv_watching tw ON tl.tv_id = tw.tv_id
        WHERE f.user_id = p_user_id
        AND tw.tv_id NOT IN (
            SELECT tl2.tv_id FROM tv_liked tl2 WHERE tl2.user_id = p_user_id
        )
        GROUP BY tw.tv_id
        ORDER BY num_friends_liked DESC;

    RETURN v_cursor;
END;
/

-- CREATE OR REPLACE FUNCTION get_tv_series_watched_by_friends(p_user_id IN NUMBER) 
-- RETURN SYS_REFCURSOR
-- IS
--     v_cursor SYS_REFCURSOR;
-- BEGIN
--     OPEN v_cursor FOR
--         SELECT tw.tv_id, COUNT(DISTINCT f.friend_id) AS num_friends_watched
--         FROM friendship f
--         JOIN tv_watching tw ON f.friend_id = tw.user_id
--         LEFT JOIN tv_completed tc ON f.friend_id = tc.user_id AND tw.tv_id = tc.tv_id
--         JOIN tv_series ts ON tw.tv_id = ts.tv_id
--         WHERE f.user_id = p_user_id
--         AND (
--             (tw.current_season >= ts.seasons * 0.5 AND tw.user_id != p_user_id) 
--             OR tc.tv_id IS NOT NULL
--         )
--         AND tw.tv_id NOT IN (
--             SELECT tv_id FROM tv_watching 
--             WHERE user_id = p_user_id AND current_season < ts.seasons * 0.5
--             UNION
--             SELECT tv_id FROM tv_completed WHERE user_id = p_user_id
--         )
--         GROUP BY tw.tv_id
--         HAVING COUNT(DISTINCT f.friend_id) = (
--             SELECT COUNT(*) FROM friendship WHERE user_id = p_user_id
--         )
--         ORDER BY num_friends_watched DESC;

--     RETURN v_cursor;
-- END;
-- /