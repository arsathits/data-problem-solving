# 🖥️ Problem 18: Server Uptime 

## 📝 Problem Statement
You are given a table that logs server session activity. Each session has a `"start"` and a `"stop"` event.  
Your task is to calculate the **total uptime** in **full days** for all servers combined.

- Uptime for a session is calculated as the number of full days **from start date (inclusive) to stop date (exclusive)**.
- Only properly paired `"start"` → `"stop"` sessions should be considered.

---

## 📦 Table Schema

### `su_server_utilization`
| Column Name    | Type        | Description                            |
|----------------|------------|----------------------------------------|
| server_id      | INT        | Unique identifier for each server      |
| status_tim     | DATE       | Event timestamp                        |
| session_status | VARCHAR    | Either `"start"` or `"stop"`           |

---

## 📥 Sample Input

| server_id | status_tim  | session_status |
|-----------|------------|----------------|
| 1         | 2022-08-02 | start          |
| 1         | 2022-08-04 | stop           |
| 2         | 2022-08-17 | start          |
| 2         | 2022-08-24 | stop           |

---

## 📤 Expected Output

| total_uptime_days |
|------------------|
| 9                |

---

## ⚙️ Approach
1. **Sort** events by `server_id` and timestamp.  
2. **Pair** each `"stop"` event with its preceding `"start"` event.  
3. **Compute session uptime**:  
   - `uptime_days = stop_date - start_date`  
4. **Sum** all session uptimes across servers.  
5. Return the result as a single-row table with column `total_uptime_days`.

---

## ✅ Notes
- Only valid `"start"` → `"stop"` sessions count.  
- First row of a server (without preceding start) or any unmatched events should be ignored.  
- Duration is **full days**; partial days are not counted.
