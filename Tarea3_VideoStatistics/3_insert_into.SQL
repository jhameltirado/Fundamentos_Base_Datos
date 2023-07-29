INSERT INTO CA_datos
    SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM CA_videos
    JOIN CA_category
    ON category_id = id;

DROP TABLE IF EXISTS CA_videos;
DROP TABLE IF EXISTS CA_category;


INSERT INTO DE_datos
    SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM DE_videos
    JOIN DE_category
    ON category_id = id;

DROP TABLE IF EXISTS DE_videos;
DROP TABLE IF EXISTS DE_category;


INSERT INTO FR_datos
SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM FR_videos
    JOIN FR_category
    ON category_id = id;

DROP TABLE IF EXISTS FR_videos;
DROP TABLE IF EXISTS FR_category;


INSERT INTO GB_datos
    SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM GB_videos
    JOIN GB_category
    ON category_id = id;

DROP TABLE IF EXISTS GB_videos;
DROP TABLE IF EXISTS GB_category;


INSERT INTO IN_datos
    SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM IN_videos
    JOIN IN_category
    ON category_id = id;

DROP TABLE IF EXISTS IN_videos;
DROP TABLE IF EXISTS IN_category;


INSERT INTO JP_datos
    SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM JP_videos
    JOIN JP_category
    ON category_id = id;

DROP TABLE IF EXISTS JP_videos;
DROP TABLE IF EXISTS JP_category;


INSERT INTO KR_datos
    SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM KR_videos
    JOIN KR_category
    ON category_id = id;

DROP TABLE IF EXISTS KR_videos;
DROP TABLE IF EXISTS KR_category;


INSERT INTO MX_datos
    SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM MX_videos
    JOIN MX_category
    ON category_id = id;

DROP TABLE IF EXISTS MX_videos;
DROP TABLE IF EXISTS MX_category;


INSERT INTO RU_datos
    SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM RU_videos
    JOIN RU_category
    ON category_id = id;

DROP TABLE IF EXISTS RU_videos;
DROP TABLE IF EXISTS RU_category;


INSERT INTO US_datos
    SELECT video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM US_videos
    JOIN US_category
    ON category_id = id;

DROP TABLE IF EXISTS US_videos;
DROP TABLE IF EXISTS US_category;
    