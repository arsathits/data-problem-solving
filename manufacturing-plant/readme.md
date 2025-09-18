## Problem 06: Manufacturing Plant

You are given two tables, `manufacture_product` and `manufacture_sales`, related to a manufacturing company.

### Task
Write a query or function that returns the **top 3 selling products** in each product category, ranked by total revenue, with these conditions:

- Ranking should be based on **total revenue per product**.
- Use **dense ranking** (i.e., no gaps in ranking if there are ties).
- Output should include only the **top 3 products per category**.
- The output columns should be: `category`, `product_name`, `revenue`, and `rank`.

### Input Tables

**manufacture_product**

| product_id | category | product_name |
|------------|----------|--------------|
| 1          | A        | Product1     |
| 2          | A        | Product2     |
| 3          | A        | Product3     |
| 4          | B        | Product4     |
| 5          | B        | Product5     |
| 6          | B        | Product6     |
| 7          | C        | Product7     |
| 8          | C        | Product8     |
| 9          | C        | Product9     |

**manufacture_sales**

| sale_id | product_id | quantity | revenue |
|---------|------------|----------|---------|
| 1       | 1          | 10       | 100.0   |
| 2       | 2          | 8        | 120.0   |
| 3       | 3          | 12       | 180.0   |
| 4       | 4          | 5        | 50.0    |
| 5       | 5          | 3        | 30.0    |
| 6       | 6          | 7        | 70.0    |
| 7       | 7          | 15       | 150.0   |
| 8       | 8          | 10       | 100.0   |
| 9       | 9          | 8        | 80.0    |

---

