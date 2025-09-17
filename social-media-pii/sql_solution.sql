SELECT
	'******' || RIGHT(phone::text, 4) AS anon_phone,
	split_part(email, '@', 2) AS email_domain,
	user_id
FROM problem_04_social_media_pii
ORDER BY anon_phone ASC;