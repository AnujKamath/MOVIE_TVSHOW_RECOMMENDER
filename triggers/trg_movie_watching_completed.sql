CREATE OR REPLACE TRIGGER trg_movie_watching_completed
AFTER INSERT OR UPDATE ON movie_watching
FOR EACH ROW
DECLARE
    v_movie_duration NUMERIC;
    v_watched_duration NUMERIC := :NEW.duration_minutes;
BEGIN
    -- Get the total duration of the movie
    SELECT duration_minutes INTO v_movie_duration
    FROM movie
    WHERE movie_id = :NEW.movie_id;

    -- Check if watched duration is >= 90% of total movie duration
    IF v_watched_duration >= (v_movie_duration * 0.9) THEN
        -- Insert into movie_completed
        INSERT INTO movie_completed (movie_completed_id, user_id, movie_id)
        VALUES (seq_movie_completed.NEXTVAL, :NEW.user_id, :NEW.movie_id);

        -- Delete from movie_watching
        DELETE FROM movie_watching
        WHERE movie_watching_id = :NEW.movie_watching_id;
    END IF;
END;
/