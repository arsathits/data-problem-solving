WITH monthly_agg AS(
	SELECT 
		TO_CHAR(request_date, 'YYYY-MM') AS month,
		SUM(distance_to_travel) AS total_distance,
		SUM(monetary_cost) AS total_cost,
		SUM(distance_to_travel)/SUM(monetary_cost) AS actual_distance_per_dollar
	FROM ride_requests
	GROUP BY TO_CHAR(request_date, 'YYYY-MM')
	ORDER BY month
),

with_forecast AS(
	SELECT month,
		total_distance,
		total_cost,
		actual_distance_per_dollar,
		LAG(actual_distance_per_dollar) OVER (ORDER BY month) AS forecasted_distance_per_dollar
	FROM monthly_agg
),

with_error AS(
	SELECT 
		month,
        total_distance,
        total_cost,
        actual_distance_per_dollar,
        forecasted_distance_per_dollar ,
		CASE
			WHEN forecasted_distance_per_dollar IS NULL THEN NULL
			ELSE (actual_distance_per_dollar - forecasted_distance_per_dollar) 
		END AS error
	FROM with_forecast
),

rmse_calc AS(
	SELECT
		ROUND(SQRT(AVG(e.error*e.error)),2) AS rmse
	FROM with_error e
	WHERE e.error IS NOT NULL
)

SELECT * FROM with_error
UNION ALL
SELECT 'RMSE' AS month, NULL, NULL, NULL, NULL, rmse FROM rmse_calc