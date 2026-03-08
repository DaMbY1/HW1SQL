SELECT 
    date,
    COUNT(DISTINCT CASE WHEN has_view = 1 THEN user_client_id END) AS view_users,
    COUNT(DISTINCT CASE WHEN has_click = 1 THEN user_client_id END) AS click_users,
    COUNT(DISTINCT CASE WHEN has_view = 1 AND has_click = 1 THEN user_client_id END) AS both_users,
    ROUND(100.0 * COUNT(DISTINCT CASE WHEN has_view = 1 AND has_click = 1 THEN user_client_id END) / 
          NULLIF(COUNT(DISTINCT CASE WHEN has_view = 1 THEN user_client_id END), 0), 2) AS conversion_rate_percent
FROM (
    SELECT 
        user_client_id,
        date,
        MAX(CASE WHEN action_type = 'view' AND widget_id = 7700 AND page_current_url = '/catalog' THEN 1 ELSE 0 END) AS has_view,
        MAX(CASE WHEN action_type = 'click' AND widget_id = 7700 AND page_current_url = '/catalog' THEN 1 ELSE 0 END) AS has_click
    FROM Events
    WHERE page_current_url = '/catalog' AND widget_id = 7700
    GROUP BY user_client_id, date
) AS user_daily
GROUP BY date
ORDER BY date;
