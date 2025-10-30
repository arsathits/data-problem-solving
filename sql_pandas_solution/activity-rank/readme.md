# 📧 Problem 30: Activity Rank

## 📌 Problem Statement

You are given a dataset of emails sent by users. Your task is to calculate the **email activity rank** for each user.  
The email activity rank is determined by the **total number of emails sent**: the user who sent the most emails receives **rank 1**, the next most active user receives rank 2, and so on.

---

## 📂 Input Data

### `google_gmail_emails`

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id          | BigInt    | Unique ID of the email |
| day         | BigInt    | Day of the email sent (numeric format) |
| from_user   | Text      | Sender of the email |
| to_user     | Text      | Recipient of the email |

---

## 🎯 Expected Output

| Column Name   | Data Type | Description |
|---------------|-----------|-------------|
| user          | Text      | Username of the sender |
| total_emails  | Integer   | Total number of emails sent by the user |
| activity_rank | Integer   | Rank based on email activity (highest emails = rank 1) |

---

## ✅ Requirements

- Count the total number of emails sent by each user.
- Sort the results **first by total emails in descending order**, then **alphabetically by username** for users with the same number of emails.
- Assign a **unique rank** to each user, even if multiple users have the same number of emails.
- Return the output with three columns: `user`, `total_emails`, `activity_rank`.

---

## 💡 Insight

This ranking allows organizations to identify the most active email users and measure engagement.  
It can help in monitoring communication patterns, detecting high-volume senders, or prioritizing support for the most active users.
