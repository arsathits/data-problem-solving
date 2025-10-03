SELECT 
	ad.user_id,
	CASE 
		WHEN ad.status = 'NEW' and paid IS NOT NULL THEN 'EXISTING'
		WHEN ad.status = 'NEW' and paid IS NULL THEN 'CHURN'
		WHEN ad.status = 'EXISTING' and paid IS NOT NULL THEN 'EXISTING'
		WHEN ad.status = 'EXISTING' and paid IS NULL THEN 'CHURN'
		WHEN ad.status = 'CHURN' and paid IS NOT NULL THEN 'RESURRECT'
		WHEN ad.status = 'CHURN' and paid IS NULL THEN 'CHURN'
		WHEN ad.status = 'RESURRECT' and paid IS NOT NULL THEN 'EXISTING'
		WHEN ad.status = 'RESURRECT' and paid IS NULL THEN 'CHURN'
	END AS new_status 
FROM ad_update_advertiser ad
LEFT JOIN ad_update_daily_pay dp
ON ad.user_id = dp.user_id
ORDER BY ad.user_id