CREATE TABLE Events (
    user_client_id INT,
    date DATE,
    timestamp TIME,
    attributes VARCHAR(10),
    page_current_url VARCHAR(50),
    action_type VARCHAR(20),
    widget_id INT
);

INSERT INTO Events (user_client_id, date, timestamp, attributes, page_current_url, action_type, widget_id) VALUES
-- 2025-01-01
(1, '2025-01-01', '10:00:00', 'ios', '/catalog', 'view', 7700),
(1, '2025-01-01', '10:05:00', 'ios', '/catalog', 'click', 7700),
(2, '2025-01-01', '10:10:00', 'android', '/catalog', 'view', 7700),
(2, '2025-01-01', '10:12:00', 'android', '/catalog', 'click', 7700),
(3, '2025-01-01', '11:00:00', 'ios', '/catalog', 'view', 7700),
(3, '2025-01-01', '11:02:00', 'ios', '/catalog', 'click', 7700),
(4, '2025-01-01', '12:00:00', 'android', '/catalog', 'view', 7700),
(4, '2025-01-01', '12:01:00', 'android', '/catalog', 'click', 7700),
(5, '2025-01-01', '13:00:00', 'ios', '/catalog', 'view', 7700),
(5, '2025-01-01', '13:03:00', 'ios', '/catalog', 'click', 7700),
(6, '2025-01-01', '14:00:00', 'android', '/catalog', 'view', 7700),
(7, '2025-01-01', '15:00:00', 'ios', '/catalog', 'view', 7700),
(8, '2025-01-01', '16:00:00', 'android', '/catalog', 'view', 7700),
(9, '2025-01-01', '17:00:00', 'ios', '/catalog', 'view', 7700),
(10, '2025-01-01', '18:00:00', 'android', '/catalog', 'view', 7700),
(1, '2025-01-01', '10:20:00', 'ios', '/catalog', 'view', 7788),
(2, '2025-01-01', '10:30:00', 'android', '/catalog', 'view', 7788),
(1, '2025-01-01', '09:00:00', 'ios', '/home', 'page_view', NULL),
(2, '2025-01-01', '09:30:00', 'android', '/checkout', 'click', 123),

-- 2025-01-02
(1, '2025-01-02', '10:00:00', 'ios', '/catalog', 'view', 7700),
(1, '2025-01-02', '10:05:00', 'ios', '/catalog', 'click', 7700),
(2, '2025-01-02', '10:10:00', 'android', '/catalog', 'view', 7700),
(2, '2025-01-02', '10:12:00', 'android', '/catalog', 'click', 7700),
(3, '2025-01-02', '11:00:00', 'ios', '/catalog', 'view', 7700),
(3, '2025-01-02', '11:02:00', 'ios', '/catalog', 'click', 7700),
(4, '2025-01-02', '12:00:00', 'android', '/catalog', 'view', 7700),
(5, '2025-01-02', '13:00:00', 'ios', '/catalog', 'view', 7700),
(6, '2025-01-02', '14:00:00', 'android', '/catalog', 'view', 7700),
(7, '2025-01-02', '15:00:00', 'ios', '/catalog', 'view', 7700),
(8, '2025-01-02', '16:00:00', 'android', '/catalog', 'view', 7700),
(9, '2025-01-02', '17:00:00', 'ios', '/catalog', 'view', 7788),
(10, '2025-01-02', '18:00:00', 'android', '/home', 'page_view', NULL),

-- 2025-01-03
(1, '2025-01-03', '10:00:00', 'ios', '/catalog', 'view', 7700),
(1, '2025-01-03', '10:05:00', 'ios', '/catalog', 'click', 7700),
(2, '2025-01-03', '10:10:00', 'android', '/catalog', 'view', 7700),
(2, '2025-01-03', '10:12:00', 'android', '/catalog', 'click', 7700),
(3, '2025-01-03', '11:00:00', 'ios', '/catalog', 'view', 7700),
(4, '2025-01-03', '12:00:00', 'android', '/catalog', 'view', 7700),
(5, '2025-01-03', '13:00:00', 'ios', '/catalog', 'view', 7700),
(6, '2025-01-03', '14:00:00', 'android', '/catalog', 'view', 7700),
(7, '2025-01-03', '15:00:00', 'ios', '/catalog', 'view', 7700),
(8, '2025-01-03', '16:00:00', 'android', '/catalog', 'view', 7700);
