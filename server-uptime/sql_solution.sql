WITH CTE AS (
    SELECT 
        server_id,
        status_tim,
        session_status,
        LAG(status_tim) OVER (PARTITION BY server_id ORDER BY status_tim) AS prev_time,
        LAG(session_status) OVER (PARTITION BY server_id ORDER BY status_tim) AS prev_status
    FROM su_server_utilization
)
SELECT 
    SUM(status_tim - prev_time) AS total_uptime_days
FROM CTE
WHERE session_status = 'stop' AND prev_status = 'start';
