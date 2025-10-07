WITH session_bounds AS (
    SELECT
        session_id,
        MIN(step_id) AS start_step,
        MAX(step_id) AS end_step
    FROM fitness_sessions
    GROUP BY session_id
    HAVING COUNT(step_id) > 1
),
joined AS (
    SELECT 
        s.session_id,
        s1.latitude AS lat1,
        s1.longitude AS lon1,
        s2.latitude AS lat2,
        s2.longitude AS lon2
    FROM session_bounds s
    JOIN fitness_sessions s1 
        ON s.session_id = s1.session_id AND s.start_step = s1.step_id
    JOIN fitness_sessions s2 
        ON s.session_id = s2.session_id AND s.end_step = s2.step_id
),
distances AS (
    SELECT
        session_id,
        6371 * 2 * ASIN(
            SQRT(
                POWER(SIN(RADIANS((lat2 - lat1) / 2)), 2) +
                COS(RADIANS(lat1)) * COS(RADIANS(lat2)) *
                POWER(SIN(RADIANS((lon2 - lon1) / 2)), 2)
            )
        ) AS curved_distance,
        SQRT(POWER(lat2 - lat1, 2) + POWER(lon2 - lon1, 2)) * 111 AS flat_distance
    FROM joined
)
SELECT
    session_id,
    ROUND(curved_distance::numeric, 4) AS avg_distance_curved,
    ROUND(flat_distance::numeric, 4) AS avg_distance_flat,
    ROUND((flat_distance - curved_distance)::numeric, 4) AS difference
FROM distances
ORDER BY session_id;
