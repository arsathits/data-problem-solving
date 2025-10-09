WITH unique_sessions AS (
    SELECT DISTINCT user_id, session_date
    FROM doi_session
)
SELECT 
    s.user_id,
    s.session_date,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_value) AS total_order_value
FROM unique_sessions s
JOIN doi_orders o 
    ON s.user_id = o.user_id
    AND s.session_date = o.order_date
GROUP BY s.user_id, s.session_date
ORDER BY s.user_id, s.session_date;
