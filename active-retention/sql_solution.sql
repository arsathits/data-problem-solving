WITH user_month AS (
	SELECT 
		user_id, 
		EXTRACT(MONTH FROM event_date) AS month,
		EXTRACT(Year FROM event_date) AS year
	FROM ar_user_actions
	WHERE event_type IN ('sign-in', 'like', 'comment')
	GROUP BY user_id, month, year
),

june_users AS (
	SELECT user_id
	FROM user_month
	WHERE year = 2022 and month = 6
),

july_users AS (
	SELECT user_id
	FROM user_month
	WHERE year = 2022 and month = 7
)

SELECT
	7 AS month,
	COUNT(DISTINCT ju.user_id) AS monthly_active_users
FROM july_users ju 
JOIN june_users jn
ON ju.user_id = jn.user_id