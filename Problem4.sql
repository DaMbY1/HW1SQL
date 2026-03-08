WITH city_model_stats AS (
    SELECT 
        city_name,
        car_model,
        COUNT(*) AS orders_count
    FROM orders
    WHERE order_status = TRUE 
        AND YEAR(created_at) = 2025
    GROUP BY city_name, car_model
),
ranked AS (
    SELECT 
        city_name,
        car_model,
        orders_count,
        ROW_NUMBER() OVER (PARTITION BY city_name ORDER BY orders_count DESC) AS rn
    FROM city_model_stats
)
SELECT city_name, car_model, orders_count
FROM ranked
WHERE rn <= 5
ORDER BY city_name ASC, orders_count DESC;
