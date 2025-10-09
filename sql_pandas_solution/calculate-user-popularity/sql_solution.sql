WITH all_users AS(
	SELECT user_id AS uid FROM cup_user_percentage
	UNION
	SELECT follower_id AS uid FROM cup_user_percentage
),

f_count AS (
	SELECT 
	    user_id,
		COUNT(follower_id) as num_followers
	FROM cup_user_percentage
	GROUP BY user_id
),

total_users AS (
	SELECT 
		COUNT(uid) AS total_users
	FROM all_users
)

SELECT 
	user_id,
	ROUND((f.num_followers::NUMERIC / t.total_users) * 100, 2) AS famous_percentage
FROM f_count f
CROSS JOIN total_users t
ORDER BY user_id
