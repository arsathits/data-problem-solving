# 🌟 Problem 19: Calculate User Popularity

## 📝 Problem Statement
On a social platform, each user can have followers who are also registered users.  
You are given a table `cup_user_percentage` that tracks which users follow which:

- `user_id` → the user being followed
- `follower_id` → the user who follows

The goal is to calculate the **famous percentage** for each user.

---

## 📌 Famous Percentage Formula

\[
\text{Famous Percentage} = \frac{\text{Number of followers the user has}}{\text{Total number of users on the platform}} \times 100
\]

- Round the result to **2 decimal places**.  
- Total number of users includes every unique `user_id` and `follower_id`.

---

## 📦 Table Schema

### `cup_user_percentage`
| Column Name  | Type | Description                       |
|------------- |------|-----------------------------------|
| user_id      | INT  | Unique identifier of the user     |
| follower_id  | INT  | Unique identifier of the follower |

---

## 📥 Example Input

| user_id | follower_id |
|---------|-------------|
| 1       | 2           |
| 1       | 3           |
| 2       | 4           |
| 5       | 1           |
| 5       | 3           |
| 11      | 7           |
| 12      | 8           |
| 13      | 5           |
| 13      | 10          |
| 14      | 12          |
| 14      | 3           |
| 15      | 14          |
| 15      | 13          |

---

## 📤 Expected Output

| user_id | famous_percentage |
|---------|------------------|
| 1       | 15.38             |
| 2       | 7.69              |
| 5       | 15.38             |
| 11      | 7.69              |
| 12      | 7.69              |
| 13      | 15.38             |
| 14      | 15.38             |
| 15      | 15.38             |

---

## ⚙️ Approach

1. Find all **unique users** by combining `user_id` and `follower_id`.  
2. Count the number of followers for each `user_id`.  
3. Compute:

   \[
   \text{famous_percentage} = \frac{\text{num_followers}}{\text{total_users}} \times 100
   \]

4. Round the result to 2 decimal places.  
5. Return results sorted by `user_id`.

---

## ✅ Notes

- Every `follower_id` is also a registered user.  
- Users with zero followers are **not included** in this example output (but can be handled similarly).  
- Famous percentage gives a **measure of popularity relative to all users**.
