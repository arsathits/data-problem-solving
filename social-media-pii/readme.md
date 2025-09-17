# 📱 Problem 4: Social Media PII

## 📌 Problem Statement

A social media company maintains a user information table that includes email addresses and phone numbers. You are tasked with building a data transformation pipeline to support both **privacy** and **analytics**.

The company needs to:
- **Anonymize phone numbers** for privacy compliance.
- **Extract email domains** for analytical grouping and marketing segmentation.

You will write a function that performs these transformations using pandas and return a cleaned DataFrame with only the required fields.

---

## 🧩 Your Task

Write a function that processes the input DataFrame (`input_df`) to:

1. **Extract Email Domain**:  
   From the `email` field, extract the domain (i.e., everything after the `@` symbol).

2. **Anonymize Phone Numbers**:  
   Mask the first 6 digits of the `phone` field with asterisks (`*`) and retain only the last 4 digits.  
   Format: `'******1234'`

3. **Sort Output**:  
   Sort the final DataFrame by the original phone number in ascending order.

---

## 📥 Input Schema

DataFrame Name: `input_df`

| Column Name | Data Type | Description               |
|-------------|-----------|---------------------------|
| user_id     | Integer   | Unique user ID            |
| email       | String    | User's email address      |
| phone       | Integer   | User's 10-digit phone     |

---

## 📤 Output Schema

The output should be a new DataFrame with the following columns:

| Column Name   | Data Type | Description                                |
|---------------|-----------|--------------------------------------------|
| anon_phone    | String    | Phone number with first 6 digits masked    |
| email_domain  | String    | Extracted domain from email                |
| user_id       | Integer   | Original user ID                           |

---

## 🧪 Example

### ✅ Input

| user_id | email              | phone       |
|---------|--------------------|-------------|
| 1       | alice@example.com  | 5551234567  |
| 2       | bob@domain.net     | 5559876543  |
| 3       | carol@email.org    | 5551239876  |
| 4       | dave@site.com      | 5554567890  |
| 5       | eve@platform.io    | 5559871234  |

### ✅ Expected Output

| anon_phone  | email_domain | user_id |
|-------------|--------------|---------|
| ******1234  | platform.io  | 5       |
| ******4567  | example.com  | 1       |
| ******6543  | domain.net   | 2       |
| ******7890  | site.com     | 4       |
| ******9876  | email.org    | 3       |
