# 🧮 Problem 08: Mathematical Regular Expressions
You are given a dataset containing strings, each of which may or may not represent a valid mathematical expression.  
Your task is to **filter and return only the rows that contain valid mathematical expressions**.

---

## ✅ Valid Expression Criteria
A valid mathematical expression must include:

- One or more numbers (`0-9`)
- Separated by one or more arithmetic operators: `+`, `-`, `*`, `/`

### Valid Examples
- `5+3`
- `6/3`
- `2*3+1`

### Invalid Examples
- `hello`
- `world`

---

## 🔧 Schema

**Table Name:** `df_math_expr`

| Column Name | Data Type |
|-------------|-----------|
| id          | integer   |
| expression  | string    |

---

## 🧾 Output

The output should include the same two columns:

- `id`
- `expression`

Rows should be ordered in the same order as the original dataset.

---

## 📘 Example

**Input:**
| id | expression |
|----|------------|
| 1  | 5+3        |
| 2  | hello      |
| 3  | 6/3        |
| 4  | world      |
| 5  | 2*3+1      |

**Output:**
| id | expression |
|----|------------|
| 1  | 5+3        |
| 3  | 6/3        |
| 5  | 2*3+1      |
