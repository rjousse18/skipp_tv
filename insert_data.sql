-- SQL Script to insert data into tv_show_data table


    CREATE TABLE IF NOT EXISTS tv_show_data (
        id SERIAL PRIMARY KEY,
        tmdb_id INT NOT NULL,
        title VARCHAR(255) NOT NULL CHECK (title ~ '^[a-z0-9_]+_S\d{2}_E\d{2,3}$'),
        intro_start_at TIME NOT NULL,
        intro_end_at TIME NOT NULL,
        outro_start_at TIME,
        outro_end_at TIME
    );
    

INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E01', '00:07:16', '00:08:49',
                    NULL,
                    NULL);
INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E02', '00:00:07', '00:01:40',
                    NULL,
                    NULL);
INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E03', '00:00:07', '00:01:40',
                    NULL,
                    NULL);
INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E04', '00:00:07', '00:01:40',
                    NULL,
                    NULL);
INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E05', '00:00:07', '00:01:40',
                    NULL,
                    NULL);
INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E06', '00:00:07', '00:01:40',
                    NULL,
                    NULL);
INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E07', '00:00:07', '00:01:40',
                    NULL,
                    NULL);
INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E08', '00:00:07', '00:01:40',
                    NULL,
                    NULL);
INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E09', '00:00:07', '00:01:40',
                    NULL,
                    NULL);
INSERT INTO tv_show_data (tmdb_id, title, intro_start_at, intro_end_at, outro_start_at, outro_end_at)
            VALUES (1399, 'game_of_thrones_S01_E10', '00:00:07', '00:01:40',
                    NULL,
                    NULL);
