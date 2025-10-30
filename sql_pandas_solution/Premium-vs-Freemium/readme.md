# 💎 Problem 28: Premium vs Freemium Downloads

## 📌 Problem Statement

A mobile application tracks downloads made by its users. Each user account can either be a **paying** or **non-paying** customer. You are tasked with generating a report that summarizes the **total number of downloads** for paying and non-paying users **by date**.

The goal is to identify the dates where **non-paying customers have more downloads than paying customers**.

---

## 📂 Input Data

### 1. `ms_acc_dimension`

| Column Name     | Data Type | Description                                         |
|-----------------|-----------|-----------------------------------------------------|
| acc_id          | Integer   | Unique ID of the account                            |
| paying_customer | String    | Indicates whether the customer is paying (`yes`/`no`)|

---

### 2. `ms_user_dimension`

| Column Name | Data Type | Description                              |
|--------------|------------|------------------------------------------|
| user_id      | Integer    | Unique ID of the user                    |
| acc_id       | Integer    | Account ID to which the user belongs     |

---

### 3. `ms_download_facts`

| Column Name | Data Type | Description                              |
|--------------|------------|------------------------------------------|
| download_id  | Integer    | Unique ID of the download record         |
| user_id      | Integer    | ID of the user who made the download     |
| date         | Date       | Date when the download occurred          |
| downloads    | Integer    | Number of downloads made on that date    |

---

## 🎯 Expected Output

| Column Name     | Data Type | Description                                         |
|-----------------|-----------|-----------------------------------------------------|
| date            | Date      | Date of the downloads                               |
| non_paying      | Integer   | Total downloads from non-paying users               |
| paying          | Integer   | Total downloads from paying users                   |

---

## ✅ Requirements

- Remove any duplicate rows from all input datasets before processing.  
- Perform the necessary joins to connect all three tables:  
  - `ms_acc_dimension` → `ms_user_dimension` on `acc_id`  
  - `ms_user_dimension` → `ms_download_facts` on `user_id`
- For each `date`, calculate:
  - Total downloads for **non-paying** customers.  
  - Total downloads for **paying** customers.
- **Filter** only those dates where non-paying downloads **exceed** paying downloads.
- Sort the final output by `date` in ascending order.
- Output should contain exactly **3 columns**:  
  `date`, `non_paying`, `paying`.

---