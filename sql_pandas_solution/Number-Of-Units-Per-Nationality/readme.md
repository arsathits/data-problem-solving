# 🏘️ Problem 37 - Number Of Units Per Nationality

### Problem Statement
We have data on rental properties and their owners.  
Write a query that figures out how many **different apartments (unit_id)** are owned by people **under 30**, broken down by their **nationality**.  
We want to see which nationality owns the most apartments, so sort the results accordingly.

---

### Table Schemas

#### `airbnb_hosts`
| Column      | Type   |
|--------------|--------|
| host_id      | bigint |
| age          | bigint |
| gender       | text   |
| nationality  | text   |

#### `airbnb_units`
| Column      | Type   |
|--------------|--------|
| unit_id      | text   |
| host_id      | bigint |
| city         | text   |
| country      | text   |
| n_bedrooms   | bigint |
| n_beds       | bigint |
| unit_type    | text   |
