# 👥 Problem 11: Active Retention

You are given a table containing information on user actions.  
Your task is to calculate the **number of Monthly Active Users (MAUs)** in **July 2022**.

---

## 📝 Definition

An **Active User** is defined as a user who has performed at least one of the following actions:

- `sign-in`
- `like`
- `comment`

and has done so **in both the current month (July 2022) and the previous month (June 2022).**

---

## 📘 Table Schema: `ar_user_actions`

| Column Name | Type      | Description                          |
|-------------|-----------|--------------------------------------|
| user_id     | INTEGER   | ID of the user                      |
| event_id    | INTEGER   | ID of the event                     |
| event_type  | TEXT      | Type of action (sign-in, like, etc.)|
| event_date  | TIMESTAMP | Timestamp of the event              |

---

## 📥 Example Input

| user_id | event_id | event_type | event_date           |
|---------|----------|------------|----------------------|
| 445     | 7765     | sign-in    | 2022-06-30 12:00:00  |
| 742     | 6458     | sign-in    | 2022-06-03 12:00:00  |
| 445     | 3634     | like       | 2022-06-05 12:00:00  |
| 742     | 1374     | comment    | 2022-06-05 12:00:00  |
| 648     | 3124     | like       | 2022-06-18 12:00:00  |
| 742     | 4521     | like       | 2022-07-01 12:00:00  |
| 445     | 7563     | comment    | 2022-07-02 12:00:00  |
| 742     | 8541     | sign-in    | 2022-07-05 12:00:00  |
| 648     | 9512     | comment    | 2022-07-15 12:00:00  |

---

## ✅ Expected Output

| month | monthly_active_users |
|-------|-----------------------|
| 7     | 3                     |

---

## 💡 Explanation

- **User 445**: Active in June (sign-in, like) and active in July (comment).  
- **User 742**: Active in June (sign-in, comment) and active in July (sign-in, like).  
- **User 648**: Active in June (like) and active in July (comment).  
➡️ All three users are counted as **MAUs** for July 2022.
