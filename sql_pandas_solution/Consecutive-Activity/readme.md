# 🗓️ Problem 25: Consecutive Activity 

## Problem Statement
You are given a dataset tracking user activity dates. Your task is to identify all users who were active for **three or more consecutive days**.

---

## Table: `ca_consecutive_act`

| Column Name | Data Type | Description |
|------------|-----------|-------------|
| `date` | DATETIME | The date when the user was active |
| `account_id` | VARCHAR(10) | Unique identifier for the user's account |
| `user_id` | VARCHAR(10) | Unique identifier for the user |

---

## Sample Input

| date | account_id | user_id |
|------|------------|---------|
| 2021-01-01 | A1 | U1 |
| 2021-01-01 | A1 | U2 |
| 2021-01-06 | A1 | U3 |
| 2021-01-02 | A1 | U1 |
| 2020-12-24 | A1 | U2 |
| 2020-12-08 | A1 | U1 |
| 2020-12-09 | A1 | U1 |
| 2021-01-10 | A2 | U4 |
| 2021-01-11 | A2 | U4 |
| 2021-01-12 | A2 | U4 |
| 2021-01-15 | A2 | U5 |
| 2020-12-17 | A2 | U4 |
| 2020-12-25 | A3 | U6 |
| 2020-12-06 | A3 | U7 |
| 2020-12-06 | A3 | U6 |
| 2021-01-14 | A3 | U6 |
| 2021-02-07 | A1 | U1 |
| 2021-02-10 | A1 | U2 |
| 2021-02-01 | A2 | U4 |
| 2021-02-01 | A2 | U5 |
| 2020-12-05 | A1 | U8 |

---

## Expected Output

Return a list of users who were active for **at least 3 consecutive days**.

| user_id |
|---------|
| U4 |
