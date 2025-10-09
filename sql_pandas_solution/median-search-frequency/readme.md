# 🔍 Problem 14: Median Searche Frequency

## 📝 Problem Statement
Google’s Data Analytics team wants to analyze user search behavior.  
You are given a summary table showing how many users performed a certain number of searches last year.  

Your task is to **compute the median number of searches per user**, based on the distribution in the table.

---

## 📦 Input Schema
**Table: `msf_search_frequency`**

| searches | num_users |
|----------|-----------|
| 1        | 2         |
| 2        | 2         |
| 3        | 3         |
| 4        | 1         |

- `searches` = number of searches performed by a group of users.  
- `num_users` = number of users who performed exactly that many searches.

---

## ✅ Output
**Table: Result**

| median |
|--------|
| 2.5    |

---

## 🔍 Explanation
- Total users = 2 + 2 + 3 + 1 = 8  
- Expand the table to per-user counts:  
  `[1, 1, 2, 2, 3, 3, 3, 4]`  
- Sorted list: `[1, 1, 2, 2, 3, 3, 3, 4]`  
- Median = average of 4th and 5th values = `(2 + 3)/2 = 2.5`

---

## ⚡ Notes
- You **must expand the aggregated counts** (`num_users`) to simulate individual users before calculating the median.  
- Round the median to **one decimal place**.  
- Both SQL (`generate_series`) and Pandas (`repeat`) approaches can be used to perform the expansion.
