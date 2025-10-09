# 📊Problem 12: Growth Analysis

You are given a table containing user transactions for different products.  
Your task is to calculate the **Year-on-Year (YoY) growth rate** for the total spend of each product.

---

## 📝 Requirements

For each **product** and **year**:

- Show the **year** (ascending order).  
- Show the **product_id**.  
- Show the **current year's total spend**.  
- Show the **previous year's total spend**.  
- Calculate the **YoY growth percentage**, using the formula:  

\[
YoY\ Growth\ (\%) = \frac{Current\_Year\_Spend - Previous\_Year\_Spend}{Previous\_Year\_Spend} \times 100
\]

- Round the YoY rate to **2 decimal places**.  
- If no previous year exists, show `NULL` for `prev_year_spend` and `yoy_rate`.  

---

## 📦 Table: `ga_user_transactions`

| Column Name     | Type     | Description            |
|-----------------|----------|------------------------|
| transaction_id  | INTEGER  | Unique transaction ID |
| product_id      | INTEGER  | ID of the product     |
| spend           | NUMERIC  | Transaction amount    |
| transaction_date| DATE     | Date of transaction   |

---

## 📥 Example Input

| transaction_id | product_id | spend   | transaction_date |
|----------------|------------|---------|------------------|
| 1341           | 123424     | 1500.60 | 2019-12-31       |
| 1423           | 123424     | 1000.20 | 2020-12-31       |
| 1623           | 123424     | 1246.44 | 2021-12-31       |
| 1322           | 123424     | 2145.32 | 2022-12-31       |

---

## ✅ Expected Output

| year | product_id | curr_year_spend | prev_year_spend | yoy_rate |
|------|------------|-----------------|-----------------|----------|
| 2019 | 123424     | 1500.60         | NULL            | NULL     |
| 2020 | 123424     | 1000.20         | 1500.60         | -33.35   |
| 2021 | 123424     | 1246.44         | 1000.20         | 24.62    |
| 2022 | 123424     | 2145.32         | 1246.44         | 72.12    |

---

## 💡 Explanation

- In **2019**, there is no previous year → `NULL` values.  
- In **2020**, spend dropped from 1500.60 → 1000.20 → **-33.35% YoY**.  
- In **2021**, spend increased from 1000.20 → 1246.44 → **24.62% YoY**.  
- In **2022**, spend increased from 1246.44 → 2145.32 → **72.12% YoY**.
