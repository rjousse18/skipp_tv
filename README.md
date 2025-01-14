# skipp_tv

SkippTV is an API that stores TV show episodes and their intro's / outro's timecodes.

# How it works

Users can retrieve intro / outro timecode with the endpoint planned for this purpose. Users can identify a tv show episode with his tmdbid, imdbid or title (formated as the_title_SXX_EXX)

# What endpoints ?

/byTitle/{title_with_episode}
/byId/{id_in_database}
/byTmdbId/{tmdbId} (get all episodes in array)

# How to contribute

The database is based on a csv file that is in root directory. To contribute, add a line in the csv with all the mandatory informations + optional informations if needed.

Mandatory informations are (in order) : tmdb_id, title, intro_start_at, intro_end_at

Example:
123456;game_of_throne_S07_03;00:01:00;00:01:45;null;null

Optional informations are (in order) : outro_start_at, outro_end_at

Title must be correctly formated like this examples :

Valid Examples :

- ✅ game_of_thrones_S02_E05
- ✅ silo_S01_E01
- ✅ orange_is_the_new_black_S10_E54
- ✅ one_piece_S01_E254
  Invalid Examples :
- ❌ Game_of_thrones_S02_E05 (capital letters in title)
- ❌ game_of_thrones_s02_e05 (no capital letters for S and E)
- ❌ game-of-thrones_S02_E05 (dash and not underscore)
- ❌ game_of_thrones_S2_E05 (only one number for season)
- ❌ game_of_thrones_S02_E5 (only one number for episode)

Timecode must be correctly formatted as HH:mm:ss

Valid Examples :

- ✅ 00:15:46
- ✅ 01:00:02

Invalid Examples :

- ❌ 45:00:89
- ❌ 00:78:00
