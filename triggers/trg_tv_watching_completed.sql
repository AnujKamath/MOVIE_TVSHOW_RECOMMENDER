CREATE OR REPLACE TRIGGER trg_tv_watching_completed
AFTER INSERT ON tv_watching
FOR EACH ROW
DECLARE
    total_episodes NUMERIC;
BEGIN
    SELECT seasons INTO total_episodes FROM tv_series WHERE tv_id = :NEW.tv_id;
    IF (:NEW.current_season = total_episodes) AND (:NEW.current_episode = (SELECT MAX(episode_num) FROM tv_episode WHERE tv_id = :NEW.tv_id AND season_num = :NEW.current_season)) THEN
        -- Move completed TV show entry to tv_completed table
        INSERT INTO tv_completed (tv_completed_id, user_id, tv_id)
        VALUES (tv_completed_seq.NEXTVAL, :NEW.user_id, :NEW.tv_id);
        -- Remove entry from tv_watching
        DELETE FROM tv_watching WHERE tv_watching_id = :NEW.tv_watching_id;
    END IF;
END;
/