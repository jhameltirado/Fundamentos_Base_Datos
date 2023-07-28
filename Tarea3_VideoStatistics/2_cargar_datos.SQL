\COPY CA_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/CA_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY CA_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/CA.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY DE_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/DE_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY DE_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/DE.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY FR_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/FR_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY FR_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/FR.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY GB_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/GB_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY GB_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/GB.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY IN_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/IN_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY IN_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/IN.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY JP_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/JP_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY JP_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/JP.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY KR_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/KR_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY KR_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/KR.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY MX_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/MX_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY MX_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/MX.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY RU_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/RU_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY RU_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/RU.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY US_videos(video_id, trending_date, title, channel_title, category_id, publish_time, tags,	views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/US_VIDEOS.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);

\COPY US_category(id, category) FROM '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/archive/US.csv' WITH(FORMAT csv, DELIMITER ',',  NULL '', HEADER OFF);
