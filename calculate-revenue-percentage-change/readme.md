# 📊 Problem 20: Calculate Revenue Percentage Change

## 📝 Problem Statement
You are given a table named `monthly_purchases` containing transaction details.  
Your goal is to calculate the **month-over-month percentage change in revenue**.

---

## 📌 Requirements
1. Calculate **total monthly revenue** by summing the `value` of all transactions per month.
2. Compute the **percentage change** compared to the previous month using:

\[
\text{Percentage Change} = \frac{\text{This Month's Revenue} - \text{Last Month's Revenue}}{\text{Last Month's Revenue}} \times 100
\]

3. Round the percentage change to **2 decimal places**.
4. For the **first month**, since there is no previous month, the value should be `NULL` (or `N/A`).
5. Ensure the output is **sorted chronologically** from the earliest month to the latest.

---

## 📦 Table Schema

### `monthly_purchases`
| Column Name   | Type      | Description                                 |
|---------------|----------|---------------------------------------------|
| id            | INT      | Unique identifier for each transaction     |
| created_at    | TIMESTAMP| The date and time the transaction occurred |
| value         | INT      | Revenue generated from the transaction     |
| purchase_id   | INT      | Identifier for the specific purchase       |

---

## 📥 Example Input

| id | created_at          | value  | purchase_id |
|----|--------------------|--------|-------------|
| 1  | 2019-01-01 00:00:00| 172692 | 43          |
| 2  | 2019-01-05 00:00:00| 177194 | 36          |
| 3  | 2019-02-02 00:00:00| 140032 | 25          |
| 4  | 2019-03-02 00:00:00| 157548 | 19          |

---

## 📤 Expected Output

| year_month | percentage_change |
|------------|------------------|
| 2019-01    | NULL             |
| 2019-02    | -59.98           |
| 2019-03    | 12.51            |

---

## ⚙️ Approach

1. **Extract the year and month** from the `created_at` column.
2. **Aggregate revenue** by month using `SUM(value)`.
3. Use `LAG()` window function to get **previous month’s revenue**.
4. Apply the percentage change formula:

\[
\text{percentage_change} = \frac{\text{current\_month\_revenue} - \text{prev\_month\_revenue}}{\text{prev\_month\_revenue}} \times 100
\]

5. Cast integers to `NUMERIC` if needed to avoid **integer division**.
6. Round the result to 2 decimal places.
7. Order results chronologically by month.

---

## ⚠️ Notes

- In PostgreSQL, `TIMESTAMP` should be used instead of `DATETIME`.
- Integer division truncates decimals; casting to `NUMERIC` ensures correct decimal percentage.
- The first month’s percentage change is always `NULL`.
