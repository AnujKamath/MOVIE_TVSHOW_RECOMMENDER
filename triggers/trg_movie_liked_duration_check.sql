-- Create the trigger to enforce >50% duration watched constraint
CREATE OR REPLACE TRIGGER trg_movie_liked_duration_check
BEFORE INSERT ON movie_liked
FOR EACH ROW
DECLARE
    v_total_duration NUMBER;
    v_watched_duration NUMBER;
BEGIN
    -- Get total duration of the movie
    SELECT duration_minutes INTO v_total_duration
    FROM movie
    WHERE movie_id = :new.movie_id;

    -- Get watched duration by the user for the movie
    SELECT duration_minutes INTO v_watched_duration
    FROM movie_watching
    WHERE user_id = :new.user_id AND movie_id = :new.movie_id;

    -- Check if watched duration is less than 50% of total duration
    IF v_watched_duration < (v_total_duration * 0.5) THEN
        RAISE_APPLICATION_ERROR(-20001, 'Watched duration must be > 50% of total duration');
    END IF;
END;
/
