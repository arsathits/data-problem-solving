SET search_path TO number_of_units_per_nationality;

SELECT 
    h.nationality,
    COUNT(DISTINCT u.unit_id) AS num_apartments
FROM number_of_units_per_nationality.airbnb_hosts h
JOIN number_of_units_per_nationality.airbnb_units u
    ON h.host_id = u.host_id
WHERE u.unit_type = 'Apartment'
  AND h.age < 30
GROUP BY h.nationality
ORDER BY num_apartments DESC;

