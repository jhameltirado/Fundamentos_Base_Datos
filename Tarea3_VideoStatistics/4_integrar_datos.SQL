INSERT INTO video_statistics
    SELECT 'Canada' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM CA_datos
    UNION
    

    SELECT 'Denmark' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM DE_datos
    UNION
    

    SELECT 'France' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM FR_datos
    UNION
    

    SELECT 'Great Britain' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM GB_datos
    UNION
    

    SELECT 'India' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM IN_datos
    UNION
    

    SELECT 'Japan' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM JP_datos
    UNION
    

    SELECT 'Korea' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM KR_datos
    UNION
    

    SELECT 'Mexico' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM MX_datos
    UNION
    

    SELECT 'Russia' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM RU_datos
    UNION
    

    SELECT 'United States' as region, video_id, trending_date, title, channel_title, category, publish_time, tags, views, likes, dislikes, comment_count, thumbnail_link, comments_disabled, ratings_disabled, video_error_or_removed, description_ 
    FROM US_datos;
    
DROP TABLE IF EXISTS CA_datos;
DROP TABLE IF EXISTS DE_datos;
DROP TABLE IF EXISTS FR_datos;
DROP TABLE IF EXISTS GB_datos;
DROP TABLE IF EXISTS IN_datos;
DROP TABLE IF EXISTS JP_datos;
DROP TABLE IF EXISTS KR_datos;
DROP TABLE IF EXISTS MX_datos;
DROP TABLE IF EXISTS RU_datos;
DROP TABLE IF EXISTS US_datos;