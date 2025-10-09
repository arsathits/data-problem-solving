SELECT p.landlord_id,
	   CONCAT(l.first_name , ' ' , l.last_name) AS landlord_name,
	   SUM(rent) AS total_rental_income
FROM problem_03_prop_properties p
JOIN problem_03_prop_landlords l ON p.landlord_id = l.landlord_id
GROUP BY p.landlord_id,landlord_name
ORDER BY p.landlord_id;