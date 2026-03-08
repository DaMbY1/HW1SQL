SELECT user_id
FROM watch_content
GROUP BY user_id
HAVING COUNT(CASE WHEN video_id = 1 THEN 1 END) > 0   -- смотрел видео 1
   AND COUNT(CASE WHEN video_id = 3 THEN 1 END) > 0   -- смотрел видео 3
   AND COUNT(CASE WHEN video_id = 2 THEN 1 END) = 0;  -- не смотрел видео 2
