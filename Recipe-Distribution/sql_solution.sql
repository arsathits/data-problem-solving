WITH paired_pages AS (
    SELECT 
        p1.page_number AS left_page_number,
        p1.title AS left_title,
        p2.title AS right_title
    FROM cookbook_recipes p1
    LEFT JOIN cookbook_recipes p2
        ON p2.page_number = p1.page_number + 1
    WHERE p1.page_number % 2 = 0

    UNION ALL

    -- Add the front cover (page 0)
    SELECT 
        0 AS left_page_number,
        NULL AS left_title,
        NULL AS right_title
)
SELECT 
    left_page_number,
    left_title,
    right_title
FROM paired_pages
ORDER BY left_page_number;
