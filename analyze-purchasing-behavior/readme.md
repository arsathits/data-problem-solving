# 🛒 Problem 21: Analyze Purchasing Behavior

## 📝 Problem Statement
You are analyzing user purchases for the first quarter of the year.  
The goal is to calculate the **average amount spent per order** for all Fridays and include the **week number** for each Friday.  
This helps understand weekly purchasing trends.

---

## 🧾 Table Schema

### `user_purchases`
| Column Name   | Data Type | Description                                 |
| ------------- | --------- | ------------------------------------------- |
| `user_id`     | INT       | Unique identifier for each user             |
| `date`        | DATE      | Date of the purchase                        |
| `amount_spent`| FLOAT     | Total amount spent by the user on that date|
| `day_name`    | VARCHAR   | Name of the day on which the purchase occurred |

---

## 📥 Sample Input

| user_id | date       | amount_spent | day_name |
|---------|------------|--------------|----------|
| 1047    | 2023-01-01 | 288          | Sunday   |
| 1099    | 2023-01-04 | 803          | Wednesday|
| 1052    | 2023-01-13 | 889          | Friday   |
| 1052    | 2023-01-13 | 596          | Friday   |
| 1095    | 2023-01-27 | 424          | Friday   |
| 1019    | 2023-02-03 | 185          | Friday   |
| 1019    | 2023-02-03 | 995          | Friday   |
| 1023    | 2023-02-24 | 259          | Friday   |

---

## 📤 Expected Output

| week_number | avg_amount_spent |
|-------------|-----------------|
| 2           | 742.50          |
| 4           | 424.00          |
| 5           | 590.00          |
| 8           | 259.00          |

---

## ⚙️ Approach

1. **Filter Fridays**  
   - Keep only rows where `day_name = 'Friday'` and the month is January, February, or March (Q1).

2. **Extract Week Number**  
   - Use the ISO week number of the date to identify the week.

3. **Aggregate Average Amount**  
   - Group by week number and calculate the average `amount_spent`.

4. **Round Values**  
   - Round the average amount to 2 decimal places for readability.

---

