DROP TABLE IF EXISTS CA_videos;

CREATE TABLE CA_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS CA_category;

CREATE TABLE CA_category
(
	id	                INTEGER,
	category	        CHAR(25)
);

DROP TABLE IF EXISTS DE_videos;

CREATE TABLE DE_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS DE_category;

CREATE TABLE DE_category
(
	id	                INTEGER,
	category            CHAR(25)
);

DROP TABLE IF EXISTS FR_videos;

CREATE TABLE FR_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS FR_category;

CREATE TABLE FR_category
(
	id	                INTEGER,
	category            CHAR(25)
);

DROP TABLE IF EXISTS GB_videos;

CREATE TABLE GB_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS GB_category;

CREATE TABLE GB_category
(
	id	                INTEGER,
	category            CHAR(25)
);

DROP TABLE IF EXISTS IN_videos;

CREATE TABLE IN_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS IN_category;

CREATE TABLE IN_category
(
	id	                INTEGER,
	category            CHAR(25)
);

DROP TABLE IF EXISTS JP_videos;

CREATE TABLE JP_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS JP_category;

CREATE TABLE JP_category
(
	id	                INTEGER,
	category            CHAR(25)
);

DROP TABLE IF EXISTS KR_videos;

CREATE TABLE KR_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS KR_category;

CREATE TABLE KR_category
(
	id	                INTEGER,
	category            CHAR(25)
);

DROP TABLE IF EXISTS MX_videos;

CREATE TABLE MX_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS MX_category;

CREATE TABLE MX_category
(
	id	                INTEGER,
	category            CHAR(25)
);

DROP TABLE IF EXISTS RU_videos;

CREATE TABLE RU_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS RU_category;

CREATE TABLE RU_category
(
	id	                INTEGER,
	category            CHAR(25)
);

DROP TABLE IF EXISTS US_videos;

CREATE TABLE US_videos
(
	video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category_id			        INTEGER,
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS US_category;

CREATE TABLE US_category
(
	id	                INTEGER,
	category	        CHAR(25)
);

DROP TABLE IF EXISTS CA_datos;

CREATE TABLE CA_datos
(
    video_id	                CHAR(35),
	trending_date	            DATE,
	title			            CHAR(200),
	channel_title	            CHAR(100),
	category			        CHAR(25),
	publish_time		        TIMESTAMP,
	tags		                CHAR(800),
	views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS DE_datos;

CREATE TABLE DE_datos
(
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS FR_datos;

CREATE TABLE FR_datos
(
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS GB_datos;

CREATE TABLE GB_datos
(
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS IN_datos;

CREATE TABLE IN_datos
(
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS JP_datos;

CREATE TABLE JP_datos
(
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS KR_datos;

CREATE TABLE KR_datos
(
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS MX_datos;

CREATE TABLE MX_datos
(
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS RU_datos;

CREATE TABLE RU_datos
(
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS US_datos;

CREATE TABLE US_datos
(
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);

DROP TABLE IF EXISTS video_statistics;

CREATE TABLE video_statistics
(
    region                      CHAR(25),
    video_id	                CHAR(35),
    trending_date	            DATE,
    title			            CHAR(200),
    channel_title	            CHAR(100),
    category			        CHAR(25),
    publish_time		        TIMESTAMP,
    tags		                CHAR(800),
    views			            INTEGER,
    likes                       INTEGER,
    dislikes                    INTEGER,
    comment_count               INTEGER,
    thumbnail_link              CHAR(100),
    comments_disabled           CHAR(6),
    ratings_disabled            CHAR(6),
    video_error_or_removed      CHAR(6),
    description_                CHAR(6000)
);