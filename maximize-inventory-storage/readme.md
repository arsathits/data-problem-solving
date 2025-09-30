# 📦 📊Problem 12: Maximize Inventory Storage

## 📝 Problem Statement
Amazon wants to optimize warehouse storage by prioritizing **prime-eligible batches** while also utilizing remaining space for **non-prime batches**.

Each batch (item) occupies a fixed square footage, and the total warehouse capacity is **500,000 square feet**.

### 🎯 Objective
Determine how many items of each type can be stored under the following constraints:

1. **Maximize prime-eligible items** first.  
2. Use any **remaining space** for non-prime items.  
3. Each batch allocation must be an **integer**.  
4. Each item has a fixed `square_footage`.  

---

## 📑 Input Schema
**Table: `mis_inventory`**

| item_id | item_type      | item_category     | square_footage |
|---------|---------------|------------------|----------------|
| 1374    | prime_eligible | mini refrigerator | 68.00          |
| 4245    | not_prime      | standing lamp     | 26.40          |
| 2452    | prime_eligible | television        | 85.00          |
| 3255    | not_prime      | side table        | 22.60          |
| 1672    | prime_eligible | laptop            | 8.50           |

---

## ✅ Expected Output
**Table: Result**

| item_type      | item_count |
|----------------|------------|
| prime_eligible | 9285       |
| not_prime      | 6          |

---

## 🔍 Explanation
- The **total square footage** for prime-eligible items is:  
  `68.00 + 85.00 + 8.50 = 161.50`  

- The warehouse can fit:  
  `FLOOR(500,000 / 161.5) = 3095 sets` of all prime items.  
  Since each set contains **3 prime items**, total prime = `3095 × 3 = 9285`.

- Used space = `3095 × 161.5 = 499,842.5`.  
  Remaining space = `157.5`.

- The **total square footage** for non-prime items is:  
  `26.40 + 22.60 = 49.00`.  

- The remaining space fits:  
  `FLOOR(157.5 / 49.0) = 3 sets`.  
  Since each set contains **2 non-prime items**, total non-prime = `3 × 2 = 6`.

---

## ⚡ Notes
- This approach assumes allocation is based on **full sets of all items per type**.  
- If instead we allowed a **greedy strategy (filling with the smallest item only)**, the result would differ (`58,823 prime laptops and 0 non-prime`).  
- Always clarify whether the warehouse packs **sets** or **individual items** when applying this logic.
