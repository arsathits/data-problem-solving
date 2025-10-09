# 💳 Problem 10: Duplicate Payment Detection

In some cases, payment transactions may be unintentionally repeated due to user error, API failures, or retry mechanisms.  
This can result in the same credit card being charged multiple times at the same merchant for the same amount.

---

## 🎯 Objective

Write a SQL query or Pandas logic to **count the number of repeated payments** that meet all of the following conditions:

1. Same `merchant_id`  
2. Same `credit_card_id`  
3. Same `amount`  
4. Occurred within **10 minutes** of a previous transaction  

⚠️ The **first transaction** in any such group should **not** be considered a repeated payment. Only follow-up transactions count.

---

## 📘 Table Schema: `dpd_duplicate`

| Column Name            | Type      | Description                        |
|------------------------|-----------|------------------------------------|
| transaction_id         | INTEGER   | Unique ID for the transaction      |
| merchant_id            | INTEGER   | ID of the merchant                 |
| credit_card_id         | INTEGER   | ID of the credit card used         |
| amount                 | INTEGER   | Transaction amount                 |
| transaction_timestamp  | DATETIME  | Time of the transaction            |

---

## 🧪 Example Input

| transaction_id | merchant_id | credit_card_id | amount | transaction_timestamp  |
|----------------|------------|----------------|--------|----------------------|
| 1              | 101        | 1              | 100    | 2022-09-25 12:00:00  |
| 2              | 101        | 1              | 100    | 2022-09-25 12:08:00  |
| 3              | 101        | 1              | 100    | 2022-09-25 12:28:00  |
| 4              | 102        | 2              | 300    | 2022-09-25 12:00:00  |
| 6              | 102        | 2              | 400    | 2022-09-25 14:00:00  |

---

## ✅ Expected Output

| payment_count |
|---------------|
| 1             |

### 💡 Explanation

- Transactions **1 and 2** occurred at the same merchant, using the same card, for the same amount, and within 10 minutes. Transaction 2 is counted as a repeated payment.  
- Transaction 3 is more than 10 minutes apart from previous transactions — **not counted**.  
- Transactions 4 and 6 have different amounts or timestamps — **not counted**.
