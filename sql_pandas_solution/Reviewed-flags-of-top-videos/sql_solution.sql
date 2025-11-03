SET search_path TO "reviewed_flags_top_videos";

WITH flag_counts AS (
    SELECT 
        video_id,
        COUNT(flag_id) AS total_flags
    FROM user_flags
    WHERE flag_id IS NOT NULL
    GROUP BY video_id
),
max_flagged_videos AS (
    SELECT 
        video_id
    FROM flag_counts
    WHERE total_flags = (SELECT MAX(total_flags) FROM flag_counts)
)
SELECT 
    uf.video_id,
    COUNT(fr.flag_id) AS reviewed_flags
FROM user_flags uf
JOIN flag_review fr 
    ON uf.flag_id = fr.flag_id
JOIN max_flagged_videos mfv 
    ON uf.video_id = mfv.video_id
WHERE fr.reviewed_by_yt = TRUE
GROUP BY uf.video_id;
