# 📊 Problem 16: Advertiser Update

## 📝 Problem Statement
You are provided with two tables containing advertiser information:

- **ad_update_advertiser** → stores advertisers and their current status.  
- **ad_update_daily_pay** → stores payment activity for advertisers on a specific day.  

Your task is to update each advertiser’s **payment status** based on whether they made a payment, following specific transition rules.

---

## 🔄 Status Transition Rules
| Current Status | Payment Made | New Status |
|----------------|--------------|------------|
| NEW            | Yes          | EXISTING   |
| NEW            | No           | CHURN      |
| EXISTING       | Yes          | EXISTING   |
| EXISTING       | No           | CHURN      |
| CHURN          | Yes          | RESURRECT  |
| CHURN          | No           | CHURN      |
| RESURRECT      | Yes          | EXISTING   |
| RESURRECT      | No           | CHURN      |

---

## 📦 Table Schemas

### ad_update_advertiser
| Column   | Type     |
|----------|----------|
| user_id  | VARCHAR  |
| status   | VARCHAR  |

### ad_update_daily_pay
| Column   | Type     |
|----------|----------|
| user_id  | VARCHAR  |
| paid     | DECIMAL  |

---

## 📥 Example Input

### ad_update_advertiser
| user_id | status   |
|---------|----------|
| bing    | NEW      |
| yahoo   | NEW      |
| alibaba | EXISTING |

### ad_update_daily_pay
| user_id | paid  |
|---------|-------|
| yahoo   | 45.00 |
| alibaba | 100.00|
| target  | 13.00 |

---

## 📤 Expected Output
| user_id | new_status |
|---------|------------|
| alibaba | EXISTING   |
| bing    | CHURN      |
| yahoo   | EXISTING   |

---

## ⚙️ Approach
1. **Join tables** on `user_id` (LEFT JOIN to keep all advertisers).  
2. **Check payment presence** (`paid IS NOT NULL` means payment made).  
3. **Apply transition rules** based on current status and payment activity.  
4. **Return result** with `user_id` and `new_status`, sorted by `user_id`.  
