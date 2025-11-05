# 🌐 Problem 35: Popularity Percentage on Meta/Facebook

## Problem Description
You are given a dataset of friendships between users on a social media platform (Meta/Facebook).  
Each row in the dataset represents a **mutual friendship** between two users — `user1` and `user2`.  
This means if `(user1, user2)` exists, both users are friends with each other.

Your goal is to calculate each user’s **popularity percentage**.

---

## Popularity Percentage Definition
The **popularity percentage** of a user is defined as:

\[
\text{Popularity Percentage} = \frac{\text{Total Number of Friends}}{\text{Total Unique Users}} \times 100
\]

---

## Table Schema

**Table Name:** `facebook_friends`

| Column | Data Type | Description |
|:--------|:-----------|:-------------|
| user1 | INT | ID of the first user |
| user2 | INT | ID of the second user (mutual friend) |

---

## Example Data

| user1 | user2 |
|:------|:------|
| 2 | 1 |
| 1 | 3 |
| 4 | 1 |
| 1 | 5 |
| 1 | 6 |
| 2 | 6 |
| 7 | 2 |
| 8 | 3 |
| 3 | 9 |

---

## Expected Output

| user | popularity_percent |
|:-----|:--------------------|
| ... | ... |

---

## Tasks

1. Create the schema and table in PostgreSQL.
2. Insert the sample friendship data.
3. Write a SQL query to compute the popularity percentage for each user.
4. Implement the equivalent computation in Python using Pandas (assuming data is loaded from PostgreSQL).

---

## Notes
- Each friendship is **bidirectional**.
- The result should be **ordered by user ID (ascending)**.
- Express popularity as a **percentage** with float precision.
