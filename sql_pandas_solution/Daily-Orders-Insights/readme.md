# 🧾 Problem 26: Daily Order Insights

## 📋 Problem Statement

You are given two datasets:

1. A record of user sessions.
2. A record of product orders.

Your task is to **identify users who initiated a session and placed one or more orders on the same day**.  

For these users, determine:

- The **total number of orders** placed on that day.
- The **total order value** for those orders.

---

## 🎯 Goal

Return a table with the following columns:

| Column | Description |
| ------- | ------------ |
| `user_id` | ID of the user |
| `session_date` | Date of the session |
| `total_orders` | Total number of orders placed by the user on that date |
| `total_order_value` | Sum of all order values for that user on that date |

---

## 🗃️ Input Tables

### **Table 1: doi_session**
| Column | Type | Description |
| ------- | ----- | ----------- |
| `session_id` | INT | Unique session ID |
| `user_id` | INT | User identifier |
| `session_date` | DATETIME | Date of the session |

### **Table 2: doi_orders**
| Column | Type | Description |
| ------- | ----- | ----------- |
| `order_id` | INT | Unique order ID |
| `user_id` | INT | User identifier |
| `order_value` | INT | Value of the order |
| `order_date` | DATETIME | Date when the order was placed |

---

## 🧩 Example Data

### **doi_orders**

| order_id | user_id | order_value | order_date |
|-----------|----------|-------------|-------------|
| 1 | 1 | 152 | 2024-01-01 |
| 2 | 2 | 485 | 2024-01-02 |
| 3 | 3 | 398 | 2024-01-05 |
| 4 | 3 | 320 | 2024-01-05 |
| 5 | 4 | 156 | 2024-01-03 |
| 6 | 4 | 121 | 2024-01-03 |
| 7 | 5 | 238 | 2024-01-04 |
| 8 | 5 | 70 | 2024-01-04 |
| 9 | 3 | 152 | 2024-01-05 |
| 10 | 5 | 171 | 2024-01-04 |

### **doi_session**

| session_id | user_id | session_date |
|-------------|----------|---------------|
| 1 | 1 | 2024-01-01 |
| 2 | 2 | 2024-01-02 |
| 3 | 3 | 2024-01-05 |
| 4 | 3 | 2024-01-05 |
| 5 | 4 | 2024-01-03 |
| 6 | 4 | 2024-01-03 |
| 7 | 5 | 2024-01-04 |
| 8 | 5 | 2024-01-04 |
| 9 | 3 | 2024-01-05 |
| 10 | 5 | 2024-01-04 |

---

## ✅ Expected Output

| user_id | session_date | total_orders | total_order_value |
|----------|---------------|--------------|-------------------|
| 1 | 2024-01-01 | 1 | 152 |
| 2 | 2024-01-02 | 1 | 485 |
| 3 | 2024-01-05 | 3 | 870 |
| 4 | 2024-01-03 | 2 | 277 |
| 5 | 2024-01-04 | 3 | 479 |

---

## 🧠 Key Notes

- Only users with **at least one session and one order on the same date** are included.  
- If a user has **multiple sessions on the same day**, count that date only once.  
- Aggregations should group by both `user_id` and `session_date`.  

---
