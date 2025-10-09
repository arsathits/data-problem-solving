SELECT
	duration,genre,release_year,title,video_id,view_count
FROM problem_01_videos
WHERE view_count > 1000000
	AND release_year >= EXTRACT(YEAR FROM CURRENT_DATE) - 6
ORDER BY duration