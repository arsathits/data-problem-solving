# 🏙️ Problem 36: Number of Streets Per Zip Code

## Problem Description
You are given a dataset of San Francisco restaurant health violations, which includes business addresses and postal codes.

Your task is to determine how many **unique street names** exist for each postal code.

---

## Rules
1. Use **only the first word** of the street name, ignoring case.
2. If the address starts with a number (e.g., `39 Pier`), use the **next word** as the street name.
3. If the order is reversed (e.g., `Pier 39`), treat it as the same street as `39 Pier`.
4. Count **unique** street names per postal code.
5. Output should be **ordered**:
   - By the number of streets (**descending**)
   - By postal code (**ascending**)

---

## Table Schema

**Schema Name:** `street_count_per_zip`  
**Table Name:** `sf_restaurant_health_violations`

| Column | Data Type | Description |
|:--|:--|:--|
| business_address | TEXT | Full address of the business |
| business_city | TEXT | City name |
| business_id | BIGINT | Unique business ID |
| business_latitude | DOUBLE PRECISION | Latitude coordinate |
| business_location | TEXT | Combined location field |
| business_longitude | DOUBLE PRECISION | Longitude coordinate |
| business_name | TEXT | Name of the business |
| business_phone_number | DOUBLE PRECISION | Business phone number |
| business_postal_code | DOUBLE PRECISION | Postal code |
| business_state | TEXT | State code |
| inspection_date | DATE | Date of inspection |
| inspection_id | TEXT | Inspection ID |
| inspection_score | DOUBLE PRECISION | Health inspection score |
| inspection_type | TEXT | Type of inspection |
| risk_category | TEXT | Risk level of violation |
| violation_description | TEXT | Description of violation |
| violation_id | TEXT | Violation identifier |

---

## Expected Output

| business_postal_code | n_streets |
|:----------------------|:----------|
| ... | ... |

---

## Tasks
1. Create schema and table in PostgreSQL.  
2. Import data from CSV into the table.  
3. Write SQL to calculate number of unique street names per zip code.  
4. Implement equivalent logic in Pandas.  

---

## Notes
- Treat street names **case-insensitively**.
- Handle reversed or numeric prefixes consistently.
- The dataset may contain missing or malformed addresses.
