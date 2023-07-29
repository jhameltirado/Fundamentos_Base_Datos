\COPY (SELECT region, likes FROM video_statistics ORDER BY likes DESC LIMIT 2) TO '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/scripts/Tarea3_VideoStatistics/consulta1.csv' WITH (FORMAT CSV, HEADER);

\COPY (SELECT title, publish_time FROM video_statistics ORDER BY publish_time ASC LIMIT 1) TO '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/scripts/Tarea3_VideoStatistics/consulta2.csv' WITH (FORMAT CSV, HEADER);

\COPY (SELECT extract(year FROM t1.publish_time) AS YEAR, t1.title, t1.views FROM video_statistics AS t1 WHERE NOT EXISTS(SELECT * FROM video_statistics AS t2 WHERE extract(YEAR FROM t2.publish_time) = extract(YEAR FROM t1.publish_time) AND t2.views > t1.views) ORDER BY YEAR) TO '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/scripts/Tarea3_VideoStatistics/consulta3.csv' WITH (FORMAT CSV, HEADER);

\COPY (SELECT count(*) AS videos, category FROM video_statistics GROUP BY category ORDER BY videos DESC LIMIT 1) TO '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/scripts/Tarea3_VideoStatistics/consulta4.csv' WITH (FORMAT CSV, HEADER);

\COPY (SELECT t1.category, t1.title, t1.views FROM video_statistics AS t1 JOIN (SELECT category, max(views) AS max_views FROM video_statistics GROUP BY category) t2 ON t1.category = t2.category AND t1.views = t2.max_views) TO '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/scripts/Tarea3_VideoStatistics/consulta5.csv' WITH (FORMAT CSV, HEADER);

\COPY (SELECT t1.region, t1.category, t1.cont_video FROM (SELECT region, category, count(*) AS cont_video FROM video_statistics GROUP BY region, category) AS t1 JOIN (SELECT region, max(cont_video) AS max_cont_video FROM (SELECT region, category, count(*) AS cont_video FROM video_statistics GROUP BY region, category) AS t2 GROUP BY region) AS t3 on t1.region = t3.region AND t1.cont_video = t3.max_cont_video) TO '/home/jhameltb/Desktop/Desktop/SEGUNDO_SEMESTRE/FUNDAMENTOS_BD/scripts/Tarea3_VideoStatistics/consulta6.csv' WITH (FORMAT CSV, HEADER);
