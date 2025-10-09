WITH warehouse_config AS (
    SELECT 500000::NUMERIC AS total_capacity
),

item_type_totals AS (
    SELECT 
        item_type,
        SUM(square_footage) AS total_square_footage
    FROM mis_inventory
    GROUP BY item_type
),

prime_allocation AS (
    SELECT 
        w.total_capacity,
        itt.total_square_footage AS prime_total_sqft,
        FLOOR(w.total_capacity / itt.total_square_footage) AS prime_sets,
        FLOOR(w.total_capacity / itt.total_square_footage) * itt.total_square_footage AS prime_space_used,
        w.total_capacity - (FLOOR(w.total_capacity / itt.total_square_footage) * itt.total_square_footage) AS remaining_space
    FROM warehouse_config w
    CROSS JOIN item_type_totals itt
    WHERE itt.item_type = 'prime_eligible'
),

non_prime_allocation AS (
    SELECT 
        pa.remaining_space,
        itt.total_square_footage AS non_prime_total_sqft,
        FLOOR(pa.remaining_space / itt.total_square_footage) AS non_prime_sets
    FROM prime_allocation pa
    CROSS JOIN item_type_totals itt
    WHERE itt.item_type = 'not_prime'
),

item_counts AS (
    SELECT 
        item_type,
        COUNT(*) AS items_per_set
    FROM mis_inventory
    GROUP BY item_type
),

final_results AS (
    SELECT 
        'prime_eligible' AS item_type,
        pa.prime_sets * ic.items_per_set AS item_count,
        1 AS sort_order
    FROM prime_allocation pa
    JOIN item_counts ic ON ic.item_type = 'prime_eligible'

    UNION ALL

    SELECT 
        'not_prime' AS item_type,
        npa.non_prime_sets * ic.items_per_set AS item_count,
        2 AS sort_order
    FROM non_prime_allocation npa
    JOIN item_counts ic ON ic.item_type = 'not_prime'
)

SELECT 
    item_type,
    item_count
FROM final_results
ORDER BY sort_order;