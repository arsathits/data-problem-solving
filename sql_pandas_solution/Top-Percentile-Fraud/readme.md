# 🚨 Problem 34: Top Percentile Fraud Detection

---

## 📌 Problem Statement

You are provided with data on **insurance claims**, including details such as **policy number**, **state**, **claim cost**, and a **fraud score** assigned to each claim.  

Your task is to identify the **most suspicious claims** in each state. Suspicious claims are defined as those with a **fraud score in the top 5th percentile** for that state.

---

## 🎯 Objective

Generate a report listing the claims that are potentially fraudulent. The output should include:

- `policy_num` — the unique identifier of the insurance policy  
- `state` — the U.S. state where the policy was issued  
- `claim_cost` — the monetary value of the claim  
- `fraud_score` — the score indicating the likelihood of fraud  

A claim is considered potentially fraudulent if its `fraud_score` is greater than or equal to the **95th percentile** of fraud scores for its state.

---

## 🧩 Input Table

**Table Name:** `fraud_score`

| Column      | Type             | Description                            |
|------------|-----------------|----------------------------------------|
| policy_num | TEXT             | Unique policy number                   |
| state      | TEXT             | State where the policy was issued      |
| claim_cost | BIGINT           | Cost of the claim                      |
| fraud_score| DOUBLE PRECISION | Fraud likelihood score                 |

---

## 📊 Output

The output should display **all claims in the top 5% of fraud scores within each state**, showing the following columns:

| Column      | Description                            |
|------------|----------------------------------------|
| policy_num | Policy number of the suspicious claim  |
| state      | State of the claim                      |
| claim_cost | Monetary cost of the claim             |
| fraud_score| Fraud score of the claim                |
