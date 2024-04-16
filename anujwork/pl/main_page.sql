set serveroutput on
CREATE OR REPLACE PROCEDURE login_screen IS
    v_user_id NUMBER;
    v_choice NUMBER;
    cursor userid_list is select user_id from user_info;
    temp NUMBER;
BEGIN
    -- Prompt for user ID
    DBMS_OUTPUT.PUT_LINE('Welcome to the Movie and TV Show Recommender!');
    <<re_login>>
    DBMS_OUTPUT.PUT_LINE('Please enter your user ID:');
    v_user_id:='& ';
    temp:=0;
    select user_id into temp from user_info where user_id=v_user_id;
    if temp=0 then GOTO re_login; end if;
    temp:=0;
    <<main_page_options>>
    -- Display menu options
    DBMS_OUTPUT.PUT_LINE('1. Go to Movie Field');
    DBMS_OUTPUT.PUT_LINE('2. Go to TV Shows Field');
    DBMS_OUTPUT.PUT_LINE('3. Logout');
    v_choice:='& ';

    -- Process user choice
    CASE v_choice
        WHEN 1 THEN
            DBMS_OUTPUT.PUT_LINE('Navigating to Movie Field...');
            -- Call procedure to handle movie field
            -- movie_field;
        WHEN 2 THEN
            DBMS_OUTPUT.PUT_LINE('Navigating to TV Shows Field...');
            -- tvseriesfield(OUT temp);
            if temp=1 then GOTO main_page_options; end if;
        WHEN 3 THEN
            DBMS_OUTPUT.PUT_LINE('Logging out...');
            GOTO re_login;
        ELSE
            DBMS_OUTPUT.PUT_LINE('Invalid choice. Please enter a number between 1 and 3.');
    END CASE;
END;
/
