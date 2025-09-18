SELECT
	c.comments,
	c.date,
	c.id,
	c.likes,
	c.platform,
	c.shares,
	REPLACE(c.text, 'Python', 'Pyspark') AS text
FROM correct_social_media_post c
ORDER BY c.comments;